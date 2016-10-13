/*
Lightweight Automated Planning Toolkit
Copyright (C) 2012
Miquel Ramirez <miquel.ramirez@rmit.edu.au>
Nir Lipovetzky <nirlipo@gmail.com>
Christian Muise <christian.muise@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef __H_LM_CUT__
#define __H_LM_CUT__

#include <aptk/search_prob.hxx>
#include <aptk/heuristic.hxx>
#include <aptk/ext_math.hxx>
#include <strips_state.hxx>
#include <strips_prob.hxx>
#include <boost/circular_buffer.hpp>
#include <vector>
#include <deque>

namespace aptk {

namespace agnostic {

namespace lmcut{

class H_Max_Evaluation_Function  {

public:

	H_Max_Evaluation_Function( std::vector<float>& value_table ) 
	: m_values( value_table ) {
	}	

	float	operator()( Fluent_Vec::const_iterator begin, Fluent_Vec::const_iterator end, unsigned &p )  {
		float v = 0;
		for ( Fluent_Vec::const_iterator it = begin; it != end; it++ ) {
			if( v < m_values[*it]){
				v = m_values[*it];
				p = *it;
			}
			//if ( v == infty ) return v;
		}
		return v;	
	}

	float	operator()( Fluent_Vec::const_iterator begin, Fluent_Vec::const_iterator end, float v2 = 0.0f) const {
		float v = v2;
		for ( Fluent_Vec::const_iterator it = begin; it != end; it++ ) {
			v = ( v < m_values[*it] ? m_values[*it] : v );
			//if ( v == infty ) return v;
		}
		return v;	
	}

private:

	const std::vector<float>&	m_values;

};

class H_Add_Evaluation_Function {

public:
	H_Add_Evaluation_Function( std::vector<float>& value_table ) 
	: m_values( value_table ) {
	}	

	float	operator()( Fluent_Vec::const_iterator begin, Fluent_Vec::const_iterator end,  unsigned &p )  {
		float v = 0;
		for ( Fluent_Vec::const_iterator it = begin; it != end; it++ ) {
			if ( m_values[*it] == infty ) 
				return infty;
			v += m_values[*it];
		}
		return v;	
	}

	
	float	operator()( Fluent_Vec::const_iterator begin, Fluent_Vec::const_iterator end, float v2 = 0.0f )  {
		float v = v2;
		for ( Fluent_Vec::const_iterator it = begin; it != end; it++ ) {
			if ( m_values[*it] == infty ) 
				return infty;
			v += m_values[*it];
		}
		return v;	
	}
	
	
private:

	const std::vector<float>&	m_values;

};

enum class LMCUT_Cost_Function { Ignore_Costs, Use_Costs, LAMA};

template <typename Search_Model, typename Fluent_Set_Eval_Func, LMCUT_Cost_Function cost_opt = LMCUT_Cost_Function::Use_Costs >
class LMCUT_Heuristic : public Heuristic<State> {
public:

	typedef STRIPS_Problem::Best_Supporter 	Best_Supporter;

	LMCUT_Heuristic( const Search_Model& prob ) 
	: Heuristic<State>( prob ), m_strips_model( prob.task() ), eval_func(m_values) {
		m_values.resize( m_strips_model.num_fluents() );
		m_values_op.resize( m_strips_model.num_actions() );
		m_difficulties.resize( m_strips_model.num_fluents() );
		m_best_supporters.resize(  m_strips_model.num_fluents() );
		m_already_updated.resize( m_strips_model.num_fluents() );
		m_allowed_actions.resize( m_strips_model.num_actions() );
		m_updated.resize( m_strips_model.num_fluents() );
		m_goal_zone.resize( m_strips_model.num_fluents() );
		m_before_goal_zone.resize( m_strips_model.num_fluents() );

		m_action_cost.resize( m_strips_model.num_actions() );
		m_satisfied_prec.resize( m_strips_model.num_actions() );
		m_max_prec.resize( m_strips_model.num_actions() );

		// HAZ: Set up the relevant actions once here so we don't need
		//      to iterate through all of them when evaluating.
		m_relevant_actions.resize( m_strips_model.num_fluents() );

		for ( unsigned i = 0; i < m_strips_model.num_actions(); i++ ) {

			const Action& a = *(m_strips_model.actions()[i]);
			m_action_cost[i] =  ( cost_opt == LMCUT_Cost_Function::Ignore_Costs ? 1.0f : 
					      ( cost_opt == LMCUT_Cost_Function::Use_Costs ? (float)a.cost()  : 1.0f + (float)a.cost()) );
			
			// Relevant if the fluent is in the precondition
			for ( unsigned j = 0; j < a.prec_vec().size(); ++j ) {
				m_relevant_actions[a.prec_vec()[j]].insert(i);
			}

			// Relevant if the fluent is in the head of a conditional effect
			for ( unsigned j = 0; j < a.ceff_vec().size(); ++j ) {

				const Conditional_Effect& ceff = *(a.ceff_vec()[j]);

				for ( unsigned k = 0; k < ceff.prec_vec().size(); ++k) {
					m_relevant_actions[ceff.prec_vec()[k]].insert(i);
				}
			}
		}
	}

	virtual ~LMCUT_Heuristic() {
	}

	float 	value( unsigned p ) const { return m_values[p]; }
	unsigned max_prec( unsigned op) const { return m_max_prec[op]; }

	

        template <typename Search_Node>
        void eval( const Search_Node* n, float& h_val, std::vector<Action_Idx>& pref_ops) {
		eval(n->state(), h_val, pref_ops);				
	}

	
        template <typename Search_Node>
        void eval( const Search_Node* n, float& h_val ) {
		
		eval(n->state(),h_val);
	}
	
	virtual void eval( const Fluent_Vec& s, float& h_val ) {
		h_val = eval_func( s.begin(), s.end() );
	}

	virtual void eval( const State& s, float& h_val ) {

		m_already_updated.reset();
		m_updated.clear();
		initialize(s);				
		compute_lmcut(s,h_val);		
	}

	virtual void eval( const State& s, float& h_val,  std::vector<Action_Idx>& pref_ops ) {
		eval( s, h_val );
	}


	void print_values( std::ostream& os ) const {
		for ( unsigned p = 0; p < m_strips_model.fluents().size(); p++ ){
				os << "h1/add({ ";
				os << m_strips_model.fluents()[p]->signature();
				os << "}) = " << m_values[p] << std::endl;
			}		
	}

	Best_Supporter	get_best_supporter( unsigned f ) const {
		return m_best_supporters[f];
	}
    
        void get_best_supporters( unsigned f, Action_Ptr_Const_Vec& bfs ) const {
		
		if(m_best_supporters[f].act_idx == no_such_index ) return;

	        const Action* bf = m_strips_model.actions()[ m_best_supporters[f].act_idx ];

		float h_val_bf = eval_func( bf->prec_vec().begin(), bf->prec_vec().end() ); 
		float h_val = 0;

		if ( !bf->asserts(f) ) { // added by conditional effect
			float min_cond_h = infty;
			for ( auto ceff : bf->ceff_vec() ) {
				if ( ceff->asserts( f ) ) {
					float h_cond = eval_func( ceff->prec_vec().begin(), ceff->prec_vec().end(), h_val_bf );
					if ( h_cond < min_cond_h )
						min_cond_h = h_cond;
				}
			}

			assert( !dequal(min_cond_h,infty) );
			h_val_bf = min_cond_h; 
		}

		const std::vector<const Action*>& add_acts = m_strips_model.actions_adding( f );   

		for ( unsigned k = 0; k < add_acts.size(); k++ ){
			const Action* a = add_acts[k];
			h_val = eval_func( a->prec_vec().begin(), a->prec_vec().end() );
			if ( !a->asserts( f ) ) { // added by conditional effect
				float min_cond_h = infty;
				for ( auto ceff : a->ceff_vec() ) {
					if ( ceff->asserts(f) ) {
						float h_cond = eval_func( ceff->prec_vec().begin(), ceff->prec_vec().end(), h_val );
						if ( h_cond < min_cond_h )
							min_cond_h = h_cond;
					}
				}
				assert( !dequal(min_cond_h,infty) );
				h_val = min_cond_h;			
			}
			if ( dequal(h_val, h_val_bf ) )
				bfs.push_back(a);
		}
	}

protected:

	void	update( unsigned p, float v ) {
		if ( v >= m_values[p] ) return;
		m_values[p] = v;
		if ( !m_already_updated.isset( p ) ) {
			m_updated.push_back( p );
			m_already_updated.set( p );
		}		
	}

	void	update( unsigned p, float v, Best_Supporter bs ) {
		update( p, v, bs.act_idx, bs.eff_idx );
	}

	float eval_diff( const Best_Supporter& bs ) const {
		float min_val = infty;
		if ( bs.act_idx == no_such_index )
			return 0;
		const Action* a =  m_strips_model.actions()[bs.act_idx];
		for ( auto p : a->prec_vec() )
			min_val = std::min( min_val, m_values[p] );
		if ( bs.eff_idx == no_such_index ) return min_val;
		for ( auto p : a->ceff_vec()[bs.eff_idx]->prec_vec() )
			min_val = std::min( min_val, m_values[p] );
		return min_val;
	}


	void	update( unsigned p, float v, unsigned act_idx, unsigned eff_idx ) {
		if ( v >= m_values[p] ) return;
		m_values[p] = v;
		if ( !m_already_updated.isset( p ) ) {
			m_updated.push_back( p );
			m_already_updated.set( p );
		}
		m_best_supporters[p].act_idx = act_idx;
		m_best_supporters[p].eff_idx = eff_idx;
	}

	void	set( unsigned p, float v ) {
		m_values[p] = v;
		if ( !m_already_updated.isset( p ) ) {
			m_updated.push_back( p );
			m_already_updated.set( p );
		}		
	}

	void	set_p( unsigned p ) {
		if ( !m_already_updated.isset( p ) ) {
			m_updated.push_back( p );
			m_already_updated.set( p );
			m_before_goal_zone.set( p );
		}		
	}

	void	initialize( const State& s ) 
	{

		//initialize num prec, so we eval h(prec) only when all of them are reachable
		for ( unsigned i = 0; i < m_strips_model.num_actions(); i++ ) {

			const Action& a = *(m_strips_model.actions()[i]);
			m_satisfied_prec[ a.index() ] = a.prec_vec().size();
			m_max_prec[ a.index() ] = std::numeric_limits<int>::max();
			m_values_op[ a.index() ] = infty;
			m_action_cost[i] = ( cost_opt == LMCUT_Cost_Function::Ignore_Costs ? 1.0f : 
					     ( cost_opt == LMCUT_Cost_Function::Use_Costs ? (float)a.cost()  : 1.0f + (float)a.cost()) );
		}
		
		for ( unsigned k = 0; k < m_strips_model.num_fluents(); k++ ) {
		        m_values[k] = m_difficulties[k] = infty;
			m_best_supporters[k] = Best_Supporter( no_such_index, no_such_index );
		}

		for ( unsigned k = 0; k < m_strips_model.empty_prec_actions().size(); k++ ) {
			const Action& a = *(m_strips_model.empty_prec_actions()[k]);
			float v =  ( cost_opt == LMCUT_Cost_Function::Ignore_Costs ? 1.0f : 
					( cost_opt == LMCUT_Cost_Function::Use_Costs ? (float)a.cost()  : 1.0f + (float)a.cost()) );
			
			for ( Fluent_Vec::const_iterator it = a.add_vec().begin();
				it != a.add_vec().end(); it++ )
			    update( *it, v, a.index(), no_such_index );
			// Conditional effects
			for ( unsigned j = 0; j < a.ceff_vec().size(); j++ )
			{
				const Conditional_Effect& ceff = *(a.ceff_vec()[j]);
				if ( !ceff.prec_vec().empty() ) continue;
				float v_eff = v;
				for ( Fluent_Vec::const_iterator it = ceff.add_vec().begin();
					it != ceff.add_vec().end(); it++ )
				    update( *it, v_eff, a.index(), j );
			}
		}
	
		for ( Fluent_Vec::const_iterator it = s.fluent_vec().begin(); 
		      it != s.fluent_vec().end(); it++ )
			set( *it, 0.0f );
		
	}

	void	initialize_cut_exploration( const State& s ) 
	{

		for ( unsigned k = 0; k < m_strips_model.empty_prec_actions().size(); k++ ) {
			const Action& a = *(m_strips_model.empty_prec_actions()[k]);
			for ( Fluent_Vec::const_iterator it = a.add_vec().begin();
				it != a.add_vec().end(); it++ )
			    set_p( *it );
			// Conditional effects
			for ( unsigned j = 0; j < a.ceff_vec().size(); j++ )
			{
				const Conditional_Effect& ceff = *(a.ceff_vec()[j]);
				if ( !ceff.prec_vec().empty() ) continue;
				for ( Fluent_Vec::const_iterator it = ceff.add_vec().begin();
					it != ceff.add_vec().end(); it++ )
				    set_p( *it );
			}
		}
	
		for ( Fluent_Vec::const_iterator it = s.fluent_vec().begin(); 
			it != s.fluent_vec().end(); it++ )
			set_p( *it );
	}

	void compute_lmcut(const State& s, float& h_val){
		h_val = 0;
		std::vector<const Action*>		cut;

		compute_h1();

		unsigned max_goal_p;
		float goal_cost = eval_func( m_strips_model.goal().begin(), m_strips_model.goal().end(), max_goal_p );
		if(goal_cost == infty){
		    h_val = infty;
		    return;
		}
		

		while( goal_cost != 0){
			
			mark_goal_plateau( max_goal_p );
			initialize_cut_exploration( s );
			compute_cut( cut );
			
			float min_cut_cost;
			cut_cost( cut, min_cut_cost );
			update_op_costs( cut, min_cut_cost);
			h_val += min_cut_cost;
			
			//TODO Record Landmark if we want to use disj act land.
			compute_incremental_h1( cut );
			goal_cost = eval_func( m_strips_model.goal().begin(), m_strips_model.goal().end(), max_goal_p );
			
			cut.clear();
			
			m_goal_zone.reset();
			m_before_goal_zone.reset();
		}
		
	}

	void mark_goal_plateau( unsigned &g) {
		if ( !m_goal_zone.isset(g) ) {
			m_goal_zone.set(g);			
			for(auto a : m_strips_model.actions_adding(g) )
				if(m_action_cost[ a->index() ] == 0)					
					mark_goal_plateau( m_max_prec[a->index()] );
		}
		
	}
	void cut_cost( std::vector<const Action*>& cut, float &min_cut_cost ){
		min_cut_cost = std::numeric_limits<float>::max();
		for(auto a : cut)
			min_cut_cost = ( min_cut_cost > m_action_cost[a->index()]  ? m_action_cost[a->index()] : min_cut_cost );
		
	}

	void update_op_costs( std::vector<const Action*>& cut, float& cost ){
		for(auto a : cut)
			m_action_cost[a->index()] -= cost;
		
	}

	void compute_incremental_h1( std::vector<const Action*>& cut ){
		for( auto a : cut ){
			const unsigned act = a->index();
			float cost =  value( max_prec( act ) ) + m_action_cost[ act ];
			for( auto ef : a->add_vec() ){
				update( ef, cost, act, no_such_index );
			}
		}
		
		while ( !m_updated.empty() ) {

			unsigned p = m_updated.front();

			m_updated.pop_front();
			m_already_updated.unset(p);
			int p_cost = value(p);

			for ( std::set<unsigned>::iterator action_it = m_relevant_actions[p].begin(); action_it != m_relevant_actions[p].end(); ++action_it) {

				const unsigned act = *action_it;
				const Action& a = *(m_strips_model.actions()[act]);
				if ( max_prec( act ) == p ){
					int old_supp_cost = m_values_op[act];
					if (old_supp_cost > p_cost) {						
						for(auto pr : a.prec_vec() ){
							if( m_values[pr] > m_values[ p ] ){
								m_max_prec[act] = pr;
							}
								
						}
						m_values_op[act] = m_values[ m_max_prec[act] ];
						int new_supp_cost = m_values_op[act];
						if (new_supp_cost != old_supp_cost) {
							// This operator has become cheaper.
							float v = new_supp_cost + m_action_cost[act];
							for( auto ef : a.add_vec() ){
								update( ef, v, act, no_such_index );
							}
							
						}
					}
				}
			}
		}
		
	}
	
	void compute_cut( std::vector<const Action*>& cut ){
		while ( !m_updated.empty() ) {

			unsigned p = m_updated.front();

			m_updated.pop_front();
			m_already_updated.unset(p);

			for ( std::set<unsigned>::iterator action_it = m_relevant_actions[p].begin(); action_it != m_relevant_actions[p].end(); ++action_it) {

				const unsigned act = *action_it;
				const Action& a = *(m_strips_model.actions()[act]);
				if ( max_prec( act ) == p ){
					bool reached_goal_zone = false;
					for ( auto ef :  a.add_vec() ){
						if( m_goal_zone.isset(ef) ){
							assert(m_action_cost[act] > 0);
							reached_goal_zone = true;
							cut.push_back(&a);
							break;
						}
					}
					if(!reached_goal_zone){
						for ( auto ef :  a.add_vec() ){
							if( !m_before_goal_zone.isset(ef) ){
								m_before_goal_zone.set(ef);
								set_p(ef);
							}
						}
					}						
					
				}
					
			}
		}
	}
	
	void	compute_h1(  ) 
	{

		while ( !m_updated.empty() ) {

			unsigned p = m_updated.front();
			//std::cout << p << ". " << m_strips_model.fluents()[p]->signature() << " " << m_values[p] << std::endl;
			m_updated.pop_front();
			m_already_updated.unset(p);

			//Successor_Generator::Heuristic_Iterator it( m_values, m_strips_model.successor_generator().nodes() );
			//int i = it.first();
			//std::cout << "First action: " << i << std::endl;
			//while ( i != -1 ) {
			for ( std::set<unsigned>::iterator action_it = m_relevant_actions[p].begin(); action_it != m_relevant_actions[p].end(); ++action_it) {
				
				const unsigned act = *action_it;				
				const Action& a = *(m_strips_model.actions()[act]);

				m_satisfied_prec[ act ]--;

				assert( m_satisfied_prec[ act ] >= 0 );
				
				if( m_satisfied_prec[ act ] != 0) continue;
				float h_pre = value( p );
				
				m_values_op[ act ] = h_pre;
				m_max_prec[ act ] = p;
				
				//float h_pre = eval_func( a.prec_vec().begin(), a.prec_vec().end() );
				//if ( h_pre == infty ) continue;
				
				//assert( h_pre != infty );

				//std::cout << "Action " << i << ". " << a.signature() << " relevant" << std::endl;

				float v = ( cost_opt == LMCUT_Cost_Function::Ignore_Costs ?
						1.0f + h_pre :
						( cost_opt == LMCUT_Cost_Function::Use_Costs ?
							(float)a.cost() + h_pre :
							1.0f + (float)a.cost() + h_pre
						) );

				for ( Fluent_Vec::const_iterator it = a.add_vec().begin();
					it != a.add_vec().end(); it++ )
				    update( *it, v, a.index(), no_such_index );
				// Conditional effects
				for ( unsigned j = 0; j < a.ceff_vec().size(); j++ )
				{
					const Conditional_Effect& ceff = *(a.ceff_vec()[j]);
					float h_cond = eval_func( ceff.prec_vec().begin(), ceff.prec_vec().end(), h_pre );
					if ( h_cond == infty ) continue;
					float v_eff = ( cost_opt == LMCUT_Cost_Function::Ignore_Costs ?
						1.0f + h_cond :
						( cost_opt == LMCUT_Cost_Function::Use_Costs ?
							(float)a.cost() + h_cond :
							1.0f + (float)a.cost() + h_cond
						) );
					for ( Fluent_Vec::const_iterator it = ceff.add_vec().begin();
						it != ceff.add_vec().end(); it++ )
					    update( *it, v_eff, a.index(), j );
				}

				//i = it.next();
			}
		}
		//print_values(std::cout);
	}

   protected:

	const STRIPS_Problem&			m_strips_model;
	std::vector<float>			m_values;
	std::vector<float>			m_values_op;
	std::vector<float>			m_difficulties;
	Fluent_Set_Eval_Func			eval_func;
	std::vector< Best_Supporter >		m_best_supporters;
	std::vector<const Action*>		m_app_set;
	std::vector< std::set<unsigned> > m_relevant_actions;
	//std::deque<unsigned> 			m_updated;
	boost::circular_buffer<int>		m_updated;
	Bit_Set					m_already_updated;
	Bool_Vec                                m_allowed_actions;
	Bit_Set                                 m_goal_zone;
	Bit_Set                                 m_before_goal_zone;

	std::vector<int>                        m_satisfied_prec; //optimization to add to  h1, parially to hadd!
	std::vector<unsigned>                   m_max_prec; //optimization to add to  h1, parially to hadd!

	std::vector<float>       		m_action_cost;
	
};

}

}

}

#endif // h_add.hxx
