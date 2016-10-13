#ifndef __PARTIAL_STATE_COLLECTION__
#define __PARTIAL_STATE_COLLECTION__

#include <set>
#include <vector>
#include <iostream>
#include <h_2.hxx>

#include <strips_state.hxx>
#include <aptk/hash_table.hxx>
#include <queue>

#include "match_trapper_tree.hxx"

/**
* PartialState Class
*/

class PartialState {
public:

    std::set<unsigned> fluents;
    size_t             m_hash;
    unsigned           idx;

    PartialState() {}
    ~PartialState() {}

    void	update_hash() {
	aptk::Hash_Key hasher;
	for(auto f : fluents)
	    hasher.add( f );
	m_hash = (size_t)hasher;	
    }

    size_t hash() const {
	return m_hash;
    }

    bool operator==(const PartialState &a) const{
	    return fluents == a.fluents;
	    
    }
    bool holds(unsigned f) const {
        return fluents.find(f) != fluents.end();
    }
    void add(unsigned f) {
        fluents.insert(f);
    }
    void remove(unsigned f) {
        fluents.erase(f);
    }

    PartialState * copy() {
        PartialState *ps = new PartialState();
        for (std::set<unsigned>::iterator it=fluents.begin(); it!=fluents.end(); ++it)
            ps->add(*it);
	ps->m_hash = m_hash;
	ps->idx = idx;
        return ps;
    }

    bool can_apply(const aptk::Action& a, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > &h2) {
        for (unsigned int i = 0; i < a.prec_vec().size(); i++) {
            if (mutex_with(a.prec_vec()[i], h2))
                return false;
        }
        return true;
    }

    PartialState * progress(const aptk::Action& a, bool add_pre = false) {

        PartialState *ps = copy();

        if (add_pre)
            for (unsigned int i = 0; i < a.prec_vec().size(); i++)
                ps->add(a.prec_vec()[i]);

        for (unsigned int i = 0; i < a.del_vec().size(); i++)
            ps->remove(a.del_vec()[i]);

        for (unsigned int i = 0; i < a.add_vec().size(); i++)
            ps->add(a.add_vec()[i]);

        return ps;
    }

    void progress_inline(const aptk::Action& a, bool add_pre = false) {


        if (add_pre)
            for (unsigned int i = 0; i < a.prec_vec().size(); i++){
		unsigned p = a.prec_vec()[i];
                add(p);
	    }
	for (unsigned int i = 0; i < a.del_vec().size(); i++){
	    unsigned p = a.del_vec()[i];
            remove(p);
	    
	}
        for (unsigned int i = 0; i < a.add_vec().size(); i++){
	    unsigned p = a.add_vec()[i];
            add(p);
	}
     
    }

    bool mutex_with(unsigned f, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > &h2) {
        for (std::set<unsigned>::iterator it=fluents.begin(); it!=fluents.end(); ++it) {
            if (h2.is_mutex(*it, f))
                return true;
        }
        return false;
    }

    bool mutex_with(PartialState &ps, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > &h2) {
        for (std::set<unsigned>::iterator it=fluents.begin(); it!=fluents.end(); ++it) {
            if (ps.mutex_with(*it, h2))
                return true;
        }
        return false;
    }

    bool entailed_by(const aptk::State& s) {
        for (std::set<unsigned>::iterator it=fluents.begin(); it!=fluents.end(); ++it)
            if (!s.entails(*it))
                return false;
        return true;
    }

    bool entails(std::set<unsigned>& fl) {
        for (std::set<unsigned>::iterator it=fl.begin(); it!=fl.end(); ++it) {
            if (!holds(*it))
                return false;
        }
        return true;
    }

    bool entails(PartialState &ps) {
        for (std::set<unsigned>::iterator it=ps.fluents.begin(); it!=ps.fluents.end(); ++it) {
            if (!holds(*it))
                return false;
        }
        return true;
    }

    bool progress_act_and_entails(PartialState &ps, const aptk::Action& a, bool add_pre = false) {
        for (std::set<unsigned>::iterator it=ps.fluents.begin(); it!=ps.fluents.end(); ++it) {
            if (!holds(*it) || a.retracts(*it)) // if does NOT hold in ps or DELETED
		if(!a.asserts(*it))             // and NOT ADDED
		    if( ( a.consumes(*it)  ) || !a.requires(*it)) // and is not REQUIRED or if it is REQUIRED it is also DELETED
			return false;
        }
        return true;
    }

    void union_other(PartialState &ps) {
        for (std::set<unsigned>::iterator it=ps.fluents.begin(); it!=ps.fluents.end(); ++it)
            fluents.insert(*it);
    }

    void minus_other(PartialState &ps) {
        for (std::set<unsigned>::iterator it=ps.fluents.begin(); it!=ps.fluents.end(); ++it)
            fluents.erase(*it);
    }

    void dump(const aptk::agnostic::Fwd_Search_Problem &prob) {
        std::cout << " {";
        for (std::set<unsigned>::iterator it=fluents.begin(); it!=fluents.end(); ++it)
            std::cout << " " << prob.task().fluents()[*it]->signature();
        std::cout << " }" << std::endl;
    }
};

/**
* PartialStateCollection Class
*
* ...made of PartialStates
*/


class PartialStateCollection {

public:

    PartialStateCollection() : m_trap_size(0), match_tree(NULL) {}
    ~PartialStateCollection() {}

    void add(PartialState *ps) {
        states.push_back(ps);
    }

    void add(PartialStateCollection *ps) {
        states.insert(states.end(),ps->states.begin(),ps->states.end());
    }

    void add(PartialState *ps, unsigned ps_idx) {
        states.push_back(ps);
        states_idx.push_back(ps_idx);
    }

    void build_match_tree(const aptk::agnostic::Fwd_Search_Problem &prob) {
        match_tree = new MTNode(states, prob);
    }

    bool traps(const aptk::State& s) {

        // Uncomment this to check the sanity of the match tree representation
        /*bool mtres = match_tree->check(s);
        bool otres = false;
        for (unsigned i = 0; i < states.size(); i++)
            if (states[i]->entailed_by(s))
                otres = true;

        if (mtres != otres) {
            std::cout << "MISMATCH MT (" << mtres << "!=" << otres << ")" << std::endl;
            match_tree->dump("  ");
        }*/
        
        if (match_tree)
            return match_tree->check(s);
            
        for (unsigned i = 0; i < states.size(); i++)
            if (states[i]->entailed_by(s))
                return true;
        return false;
    }

    bool traps(PartialState& s) {

        if (match_tree)
            return match_tree->check(s);
            
        for (unsigned i = 0; i < states.size(); i++)
            if (s.entails(*(states[i])))
                return true;
        return false;
    }

    void dump(const aptk::agnostic::Fwd_Search_Problem &prob) {
        std::cout << "Size: " << states.size() << std::endl;
        std::cout << "[ " << std::endl;
        for(auto ps : states)
            ps->dump(prob);
        std::cout << "]" << std::endl;
    }


    /************
     * bi -> bj *
     ************/
    bool is_trap_and_exits(aptk::agnostic::Fwd_Search_Problem &prob, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > &h2) {

        // Check every partial state bi in the trap...
        for (unsigned int i = 0; i < states.size() && exit_states.empty(); i++) {
            PartialState bi = *(states[i]);

            std::vector<const aptk::Action * > actions;
            compute_possibly_applicable_actions(&bi, actions, prob, h2);

            // ...and every action applicable in a state matching bi...
            for (unsigned int j = 0; j < actions.size(); j++) {

                const aptk::Action& a = *(actions[j]);

                // ...which must have a black knight to keep us stuck
                //    in the trap...
                PartialState *bip = bi.copy();

                for (unsigned int k = 0; k < a.prec_vec().size(); k++)
                    bip->add(a.prec_vec()[k]);
                for (unsigned int k = 0; k < a.add_vec().size(); k++)
                    bip->add(a.add_vec()[k]);
                for (unsigned int k = 0; k < a.del_vec().size(); k++)
                    bip->remove(a.del_vec()[k]);

		//If resulting state does not contain an atom mutex with G, then it's an escape
		//and cannot be a trap
		bool goal_mutex = false;		
		for ( unsigned p = 0; p < prob.task().goal().size() && !goal_mutex; p++ ) {
		    unsigned g = prob.task().goal()[p];
		    if (bip->mutex_with(g,h2)) {
			goal_mutex = true;

		    }
		}
		
		if( !goal_mutex ){		   
		    delete bip;
		    while( !exit_states.empty() ){
			PartialState *ps = exit_states.back();
			exit_states.pop_back();
			delete ps;
		    }


		    return false;
		}
		
                bool found_black_knight = false;
                for (unsigned int k = 0; k < states.size() && !found_black_knight; k++) {
                    if (bip->entails(*(states[k])))
                        found_black_knight = true;
                }

                // ...and without a valiant black knight we escape
                //    the trap... and we save the partial state and the action
                // .. so we can look for candidates to include in the trap
                if (!found_black_knight) {
                    exit_actions.push_back( &a );
                    exit_states.push_back(bip);
                }
                else
                    delete bip;
            }
        }
        m_trap_size = states.size();
        // ...and if everything is hunky dory, then we're stuck for good!
        if( exit_states.empty() ) {
            return true;
        }
        else
            return false;
    }


    /************
     * bi -> bj *
     ************/
    bool istrap(const aptk::agnostic::Fwd_Search_Problem &prob, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > &h2) {

        // Check every partial state bi in the trap...
        for (unsigned int i = 0; i < states.size(); i++) {
            PartialState bi = *(states[i]);

            std::vector<const aptk::Action * > actions;
            compute_possibly_applicable_actions(&bi, actions, prob, h2);

            // ...and every action applicable in a state matching bi...
            for (unsigned int j = 0; j < actions.size(); j++) {

                const aptk::Action& a = *(actions[j]);

                // ...and must have a black knight to keep us stuck
                //    in the trap...
                PartialState *bip = bi.copy();

                for (unsigned int k = 0; k < a.prec_vec().size(); k++)
                    bip->add(a.prec_vec()[k]);
                for (unsigned int k = 0; k < a.add_vec().size(); k++)
                    bip->add(a.add_vec()[k]);
                for (unsigned int k = 0; k < a.del_vec().size(); k++)
                    bip->remove(a.del_vec()[k]);

                bool found_black_knight = false;
                for (unsigned int k = 0; k < states.size() && !found_black_knight; k++) {
                    if (bip->entails(*(states[k])))
                        found_black_knight = true;
                }

                delete bip;

                // ...and without a valiant black knight we escape
                //    the trap...
                if (!found_black_knight)
                    return false;

            }
        }

        // ...and if everything is hunky dory, then we're stuck for good!
        return true;
    }

	
    unsigned trap_size() { return m_trap_size; }

protected:

    void compute_possibly_applicable_actions(PartialState *ps,
                                             std::vector<const aptk::Action * > &actions,
                                             const aptk::agnostic::Fwd_Search_Problem &prob,
                                             aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > &h2)
    {
        for (unsigned int j = 0; j < prob.task().num_actions(); j++) {
            const aptk::Action * a = prob.task().actions()[j];

            bool could_apply = false;
	    for(auto f : ps->fluents)
		if( a->del_set().isset( f ) ){
		    could_apply = true;
		    break;
		}
	    
	    if(could_apply)
		for (unsigned int k = 0; k < a->prec_vec().size(); k++) {
		    if (ps->mutex_with(a->prec_vec()[k], h2))
			could_apply = false;
		}
	

            if (could_apply)
                actions.push_back(a);
        }
    }


protected:

    std::vector<PartialState*> states;

    //just for the novelty search
    std::vector<unsigned> states_idx;

    std::vector<const aptk::Action*> exit_actions;
    std::vector<PartialState*> exit_states;

    unsigned m_trap_size;

    MTNode * match_tree;


};

#endif
