/*
Lightweight Automated Planning Toolkit
Copyright (C) 2012
Miquel Ramirez <miquel.ramirez@rmit.edu.au>
Nir Lipovetzky <nirlipo@gmail.com>

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

#ifndef __BREADTH_FIRST_SEARCH_TRAPPER__
#define __BREADTH_FIRST_SEARCH_TRAPPER__

#include <aptk/search_prob.hxx>
#include <aptk/resources_control.hxx>
#include <aptk/closed_list.hxx>
#include <aptk/hash_table.hxx>
#include "partial_state_collection.hxx"
#include <h_2.hxx>
#include <reachability.hxx>

#include <queue>
#include <vector>
#include <tuple>
#include <algorithm>
#include <iostream>

namespace aptk {

namespace search {

namespace trapper {

template <typename State>
class Node {
public:

    typedef State State_Type;

    Node( State* s, Action_Idx action, Node<State>* parent = nullptr, float cost = 1.0f, bool compute_hash = true)
        : m_state( s ), m_parent( parent ), m_action(action), m_g( 0 ) {

        m_g = ( parent ? parent->m_g + cost : 0.0f);
        if( m_state == NULL )
            update_hash();
    }

    virtual ~Node() {
        if ( m_state != NULL ) delete m_state;
    }

    unsigned&      		gn()		{
        return m_g;
    }
    unsigned       		gn() const 	{
        return m_g;
    }
    Node<State>*		parent()   	{
        return m_parent;
    }
    Action_Idx		action() const 	{
        return m_action;
    }
    State*			state()		{
        return m_state;
    }
    void			set_state( State* s )	{
        m_state = s;
    }
    bool			has_state() const	{
        return m_state != NULL;
    }
    const State&		state() const 	{
        return *m_state;
    }
    void			print( std::ostream& os ) const {
        os << "{@ = " << this << ", s = " << m_state << ", parent = " << m_parent << ", g(n) = " << m_g  << "}";
    }

    bool    is_better( Node* n ) const {
        return false;
    }

    size_t      hash() const {
        return m_state ? m_state->hash() : m_hash;
    }
    void        compare_only_state( bool b ) {
        m_compare_only_state = b;
    }

    void    update_hash() {
        Hash_Key hasher;
        hasher.add( m_action );
        if ( m_parent != NULL )
            hasher.add( m_parent->state()->fluent_vec() );
        m_hash = (size_t)hasher;
    }

    bool   	operator==( const Node<State>& o ) const {

        if( &(o.state()) != NULL && &(state()) != NULL)
            return (const State&)(o.state()) == (const State&)(state());
        /**
         * Lazy
         */
        if  ( m_parent == NULL ) {
            if ( o.m_parent == NULL ) return true;
            return false;
        }

        if ( o.m_parent == NULL ) return false;

        return (m_action == o.m_action) && ( *(m_parent->m_state) == *(o.m_parent->m_state) );
    }

public:

    State*		m_state;
    Node<State>*	m_parent;
    float		m_h;
    Action_Idx	m_action;
    unsigned       	m_g;
    size_t		m_hash;
    bool            m_compare_only_state;


};


template <typename Search_Model>
class BRFS {

public:

    typedef		typename Search_Model::State_Type		State;
    typedef  	Node< State >					Search_Node;
    typedef 	Closed_List< Search_Node >      		Closed_List_Type;

    BRFS( 	const Search_Model& search_problem, PartialStateCollection* psc)
        : m_problem( search_problem ), m_exp_count(0), m_gen_count(0), m_cl_count(0), m_max_depth(0), m_verbose(true), m_h2(search_problem), m_reachability( search_problem.task() ), m_psc_traps(psc), m_h2_traps_count(0), m_psc_traps_count(0), m_reachable_traps_count(0), m_check_trap(false), m_check_h1(false), m_check_h2(false)
    {
        m_de_stats = new std::vector< std::tuple< int, int, int > >();
    }

    virtual ~BRFS() {
        for ( typename Closed_List_Type::iterator i = m_closed.begin();
                i != m_closed.end(); i++ ) {
            delete i->second;
        }

        while	(!m_open.empty() )
        {
            Search_Node* n = m_open.front();
            m_open.pop();
            delete n;
        }

        m_closed.clear();
        m_open_hash.clear();
    }


    void	set_verbose( bool v ) {
        m_verbose = v;
    }
    bool	verbose() const {
        return m_verbose;
    }


    void reset() {
        for ( typename Closed_List_Type::iterator i = m_closed.begin();
                i != m_closed.end(); i++ ) {
            delete i->second;
        }

        while	(!m_open.empty() )
        {
            Search_Node* n = m_open.front();
            m_open.pop();
            delete n;
        }

        m_closed.clear();
        m_open_hash.clear();
        m_max_depth=0;
    }

    virtual bool    is_goal( Search_Node* n  ) {
        if( n->has_state() )
            return m_problem.goal( *(n->state()) );
        else {
            n->parent()->state()->progress_lazy_state(  m_problem.task().actions()[ n->action() ] );
            const bool is_goal = m_problem.goal( *( n->state() ) );
            n->parent()->state()->regress_lazy_state( m_problem.task().actions()[ n->action() ] );
            return is_goal;
        }

    }

    void	start( State *s = NULL ) {

        reset();

        if(!s)
            m_root = new Search_Node( m_problem.init(), no_op, NULL );
        else
            m_root = new Search_Node( s, no_op, NULL );
#ifdef DEBUG
        std::cout << "Initial search node: ";
        m_root->print(std::cout);
        std::cout << std::endl;
#endif
        m_open.push( m_root );
        m_open_hash.put( m_root );
        inc_gen();
    }

    virtual bool	find_solution( float& cost, std::vector<Action_Idx>& plan ) {
        Search_Node* end = do_search();
        if ( end == NULL ) return false;
        extract_plan( m_root, end, plan, cost );

        return true;
    }

    	void                    inc_unreachable()               {
		m_reachable_traps_count++;
	}
	void                    inc_trapper()                   {
		m_psc_traps_count++;
	}
	void                    inc_h2_traps()                  {
		m_h2_traps_count++;
	}
	unsigned                    h1_traps_count()               {
		return m_reachable_traps_count;
	}
	unsigned                    psc_traps_count()                   {
		return m_psc_traps_count;
	}
	unsigned                    h2_traps_count()                  {
		return m_h2_traps_count;
	}
	
	unsigned traps_computed(){
		return         m_psc_traps->trap_size();
	}



    void			inc_gen()			{
        m_gen_count++;
    }
    unsigned		generated() const		{
        return m_gen_count;
    }
    void			inc_exp()			{
        m_exp_count++;
    }
    unsigned		expanded() const		{
        return m_exp_count;
    }

    void			inc_closed()			{
        m_cl_count++;
    }
    unsigned		pruned_closed() const		{
        return m_cl_count;
    }

    void 			close( Search_Node* n ) 	{
        m_closed.put(n);
    }
    Closed_List_Type&	closed() 			{
        return m_closed;
    }
    Closed_List_Type&	open_hash() 			{
        return m_open_hash;
    }

    const	Search_Model&	problem() const			{
        return m_problem;
    }

    bool 		is_closed( Search_Node* n ) 	{
        Search_Node* n2 = this->closed().retrieve(n);

        if ( n2 != NULL )
            return true;

        return false;
    }

    bool          search_exhausted() {
        return m_open.empty();
    }

    Search_Node* 		get_node() {
        Search_Node *next = NULL;
        if(! m_open.empty() ) {
            next = m_open.front();
            m_open.pop();
            m_open_hash.erase( m_open_hash.retrieve_iterator( next) );
        }
        return next;
    }

    void	 	open_node( Search_Node *n ) {
        m_open.push(n);
        m_open_hash.put(n);
        inc_gen();
        if(n->gn() + 1 > m_max_depth) {
            //if( m_max_depth == 0 ) std::cout << std::endl;
            m_max_depth = n->gn() + 1 ;
            if ( verbose() )
                std::cout << "[" << m_max_depth  <<"]" << std::flush;
        }

    }

    void set_check_trap() {m_check_trap = true;}
    void set_check_h1() {m_check_h1 = true;}
    void set_check_h2() {m_check_h2 = true;}

    virtual bool eval( Search_Node* n) {

	

        int h2de = 0, pscde = 0, rede = 0;
        //std::cout<<"/"<<std::flush;
	if(m_check_h2){
	    m_h2.compute_mutexes_only( *(n->state()) );
	    if( m_h2.eval( m_problem.task().goal() ) == infty) {
		inc_h2_traps();
		//std::cout<<"2"<<std::flush;
		h2de++;
	    }
	}
	if(m_check_trap)
	    if( m_psc_traps->traps( *(n->state()) ) ) {
		inc_trapper();
		//std::cout<<"*"<<std::flush;
		pscde++;
	    }
	if(m_check_h1)
	    if( !m_reachability.is_reachable(n->state()->fluent_vec(),this->problem().task().goal()) ) {
		inc_unreachable();
		// std::cout<<"r"<<std::flush;
		rede++;
	    }

        // if (pscde > (h2de * rede))
        //     std::cout << " :) " << std::flush;

	if (m_check_h1 and m_check_h2 and m_check_trap and pscde > (h2de + rede) ){
	    std::cout << std::endl;
	    n->state()->print(std::cout);
	    std::cout << std::endl;
	    //std::cout << " ;D " << std::flush;
	}

	if(h2de > 0 or pscde > 0 or rede > 0)
	    return true;
	
	return false;
        //m_de_stats->push_back(std::tuple<int, int, int>(h2de, pscde, rede));

    }

	/*doesn't detect goal states*/
    virtual Search_Node*   process(  Search_Node *head ) {
        typedef typename Search_Model::Action_Iterator Iterator;
        Iterator it( this->problem() );

        int a = it.start( *(head->state()) );
        while ( a != no_op ) {
            State *succ =  m_problem.next( *(head->state()), a ) ;
            Search_Node* n = new Search_Node( succ, a, head );

            if ( is_closed( n ) ) {
                delete n;
                a = it.next();
                inc_closed();
                continue;
            }
            if( previously_hashed(n) ) {
                inc_closed();
                delete n;
            }
            else {
		    eval(n);
                open_node(n);
                if( false && is_goal( n ) )
                    return n;

            }
            a = it.next();
        }


        return NULL;
    }


	/*Does search for 10,000 states, and does not stop on a goal state*/
    virtual Search_Node*	 	do_search() {
        Search_Node *head = get_node();
        if(  false && is_goal( head ) )
            return head;

        int counter = 0;
        while(head) {
            if( ! head->has_state() )
                head->set_state( m_problem.next(*(head->parent()->state()), head->action()) );

            Search_Node* goal = process(head);
            inc_exp();
            close(head);
            if( false && goal ) { 
                if( ! goal->has_state() )
                    goal->set_state( m_problem.next(*(goal->parent()->state()), goal->action()) );
                return goal;
            }
            counter++;
            head = get_node();

	    if(expanded() == 10000) return NULL;
	    if(expanded() % 100 == 0) 
		    std::cout << "Expanded: " << expanded() << " trap: " << psc_traps_count()  << " h1: " << h1_traps_count()  << " h2: " << h2_traps_count()<< std::endl;
        }
        return NULL;
    }

    virtual bool 			previously_hashed( Search_Node *n ) {
        Search_Node *previous_copy = m_open_hash.retrieve(n);

        if( previous_copy != NULL )
            return true;

        return false;
    }

    Search_Node* root() {
        return m_root;
    }
    void	extract_plan( Search_Node* s, Search_Node* t, std::vector<Action_Idx>& plan, float& cost, bool reverse = true ) {
        Search_Node *tmp = t;
        cost = 0.0f;
        while( tmp != s) {
            cost += m_problem.cost( *(tmp->state()), tmp->action() );
            plan.push_back(tmp->action());
            tmp = tmp->parent();
        }

        if(reverse)
            std::reverse(plan.begin(), plan.end());
    }


protected:

    void	extract_path( Search_Node* s, Search_Node* t, std::vector<Search_Node*>& plan ) {
        Search_Node* tmp = t;
        while( tmp != s) {
            plan.push_back(tmp);
            tmp = tmp->parent();
        }

        std::reverse(plan.begin(), plan.end());
    }

protected:

    const Search_Model&			m_problem;
    std::queue<Search_Node*>		m_open;
    Closed_List_Type			m_closed, m_open_hash;
    unsigned				m_exp_count;
    unsigned				m_gen_count;
    unsigned				m_cl_count;
    unsigned                                m_max_depth;
    Search_Node*				m_root;
    std::vector<Action_Idx> 		m_app_set;
    bool					m_verbose;
    agnostic::H2_Heuristic<Search_Model>    m_h2;
    aptk::agnostic::Reachability_Test       m_reachability;
    PartialStateCollection*                 m_psc_traps;
    unsigned                                m_h2_traps_count;
    unsigned                                m_psc_traps_count;
    unsigned                                m_reachable_traps_count;

    bool m_check_trap;
    bool m_check_h1;
    bool m_check_h2;

    std::vector< std::tuple< int, int, int > > *m_de_stats;

};

template <typename Search_Model>
class BRFS_Trapper : public BRFS<Search_Model> {
 public:

	typedef		typename Search_Model::State_Type		State;
	typedef  	Node< State >					Search_Node;
	typedef 	Closed_List< Search_Node >      		Closed_List_Type;

	BRFS_Trapper( 	const Search_Model& search_problem, PartialStateCollection* psc) : BRFS<Search_Model>(search_problem, psc) {}
	virtual ~BRFS_Trapper() {}

	virtual bool eval( Search_Node* n) {
		if( BRFS<Search_Model>::m_psc_traps->traps( *(n->state()) ) ) {
			BRFS<Search_Model>::inc_trapper();
			return true;
		}
		return false;
	}

	virtual Search_Node*   process(  Search_Node *head ) {
		typedef typename Search_Model::Action_Iterator Iterator;
		Iterator it( this->problem() );

		int a = it.start( *(head->state()) );
		while ( a != no_op ) {
			State *succ =  BRFS<Search_Model>::m_problem.next( *(head->state()), a ) ;
			Search_Node* n = new Search_Node( succ, a, head );

			if ( BRFS<Search_Model>::is_closed( n ) ) {
				delete n;
				a = it.next();
				BRFS<Search_Model>::inc_closed();
				continue;
			}
			if( BRFS<Search_Model>::previously_hashed(n) ) {
				BRFS<Search_Model>::inc_closed();
				delete n;
			}
			else {
				if( eval(n) ){
					delete n;
					a = it.next();
					continue;
				}
				BRFS<Search_Model>::open_node(n);
				if( BRFS<Search_Model>::is_goal( n ) )
					return n;

			}
			a = it.next();
		}


		return NULL;
	}


	virtual Search_Node*	 	do_search() {
		Search_Node *head = BRFS<Search_Model>::get_node();
		if( BRFS<Search_Model>::is_goal( head ) )
			return head;

		int counter = 0;
		while(head) {
			if( ! head->has_state() )
				head->set_state( BRFS<Search_Model>::m_problem.next(*(head->parent()->state()), head->action()) );

			Search_Node* goal = process(head);
			BRFS<Search_Model>::inc_exp();
			BRFS<Search_Model>::close(head);
			if( goal ) {
				if( ! goal->has_state() )
					goal->set_state( BRFS<Search_Model>::m_problem.next(*(goal->parent()->state()), goal->action()) );
				return goal;
			}
			counter++;
			head = BRFS<Search_Model>::get_node();

			//if(expanded() == 1000) return NULL;
			if(BRFS<Search_Model>::expanded() % 100000 == 0) 
				std::cout << "Expanded: " << BRFS<Search_Model>::expanded() << std::endl;
		}
		return NULL;
	}
	
};

}

}

}

#endif // brfs_trapper.hxx
