#ifndef __MEGA_TRAP__
#define __MEGA_TRAP__

#include <set>
#include <map>
#include <stack>
#include <vector>
#include <iostream>
#include <h_2.hxx>
#include <types.hxx>
#include <aptk/bit_set.hxx>
#include <action.hxx>



using   aptk::agnostic::Fwd_Search_Problem;
using   aptk::agnostic::H2_Heuristic;

using   aptk::Bit_Set;
using   aptk::Action_Ptr_Vec;


class MegaTrap {
public:

    std::vector<PartialState*> * candidates;
    H2_Heuristic< Fwd_Search_Problem > * h2;
    Fwd_Search_Problem * search_prob;

    // Maps a Bi to a mapping of actions-to-incoming Bj's...so in the
    //  end, in_nodes[ps][act] are all those Bj's where ps "saves" the
    //  trap when applying act in Bj
    std::vector< std::map<aptk::Action * , std::vector<PartialState*>* > > in_nodes;

    // Similar map for the out_nodes
    std::vector< std::map<aptk::Action *, std::vector<PartialState*>* > > out_nodes;

    // Sink nodes are those Bi's that have at least one action not saved
    //  by any Bj.
    std::set< PartialState * >  sinks;
    Bit_Set                     in_sinks;    
    std::vector<Action_Ptr_Vec> applicable_vec;

    MegaTrap(std::vector<PartialState*> &_candidates,
             H2_Heuristic< Fwd_Search_Problem > &_h2,
             Fwd_Search_Problem &_search_prob) {
        candidates = &_candidates;
        h2 = &_h2;
        search_prob = &_search_prob;
	in_sinks.resize(_candidates.size());
	applicable_vec.resize(_candidates.size());
	in_nodes.resize(_candidates.size());
	out_nodes.resize(_candidates.size());
    }

    void generate_graph() {

	float t0 = aptk::time_used();
	
        // Set up the data structure for in_node connections
        for (auto ps1 : *candidates) {
	    
            in_nodes[ps1->idx]  = std::map< aptk::Action *, std::vector<PartialState*>* >();
            out_nodes[ps1->idx] = std::map< aptk::Action *, std::vector<PartialState*>* >();
	    
            for (auto act : search_prob->task().actions()) {		
		if (applicable(act, ps1)){
		    applicable_vec[ps1->idx].push_back(act);		    		  		    
		    out_nodes[ps1->idx][act] = new std::vector<PartialState*>();
		}
	    }
	}
	float tf = aptk::time_used();
	std::cout << "Data Structures generated!" << " Time: " << tf - t0 << std::endl; 
	t0 = tf;
	
        // Compute the in_nodes
        for (auto ps1 : *candidates) {
            for (auto act : applicable_vec[ps1->idx]) {
		for (auto ps2 : *candidates) {
		    if (saves(ps2, ps1, act)) {
			if( in_nodes[ps2->idx].find(act) == in_nodes[ps2->idx].end())
			    in_nodes[ps2->idx][act]  = new std::vector<PartialState*>();

			in_nodes[ps2->idx][act]->push_back(ps1);
			out_nodes[ps1->idx][act]->push_back(ps2);
		    }		    
		}
	    }
	}
	


	tf = aptk::time_used();
	std::cout << "in/out nodes generated!" << " Time: " << tf - t0 << std::endl;
	t0 = tf;
	
        // Compute the sinks
        for (auto ps : *candidates)
		if (is_sunk(ps)){
			sinks.insert(ps);
			in_sinks.set(ps->idx);
		}

	tf = aptk::time_used();
	std::cout << "Sinks computed!" << " Time: " << tf - t0 << std::endl;
	t0 = tf;
	
    }

    // Return true if ps is a sink
    bool is_sunk(PartialState * ps) {
        if (in_sinks.isset(ps->idx))
            return true;
	for (auto ps2_vec : out_nodes[ps->idx]) {        	    
	    bool saved = false;
	    for (auto ps2 : *(ps2_vec.second)) {
		if (!in_sinks.isset(ps2->idx)) {
		    saved = true;
		    break;
		}
	    }
	    if (!saved)
		return true;
            
        }
        return false;
    }

    // Return true if ps1 saves ps2 when act is applied
    bool saves(PartialState *ps1, PartialState *ps2, aptk::Action *act) {

	return ps2->progress_act_and_entails( *ps1, *act, true);
    }

    // Return true if act could be applicable in partial state ps
    // prec not mutex, and action deletes at least a lit in ps
    bool applicable(aptk::Action *act, PartialState *ps) {
        for (auto f : act->prec_vec())
            if (ps->mutex_with(f, *h2))
                return false;

	for(auto f : ps->fluents)
	    if( act->del_set().isset( f ) )
		return true;
	
        return false;
    }

    // Propagate the sink nodes to a fixed point in the graph
    void propagate_sinks() {
	float t0 = aptk::time_used();
        std::stack<PartialState*> open;
	
        for (auto ps : sinks)
            open.push(ps);	    
	

        while (open.size() > 0) {
            PartialState * sink = open.top();
            open.pop();
	    for (auto& bi_vec : in_nodes[sink->idx] ) {
		for(auto bi : *(bi_vec.second)){
		    if ( !in_sinks.isset(bi->idx) and is_sunk(bi)) {
			sinks.insert(bi);
			in_sinks.set(bi->idx);
			open.push(bi);
			
		    }
		}
	    }
           
        }
	float tf = aptk::time_used();
	std::cout << " Time: " << tf - t0 << std::endl;
    }

    // Generate a trap of all the non-sink nodes
    PartialStateCollection * generate_trap() {
        PartialStateCollection * psc = new PartialStateCollection();
        for (auto ps : *candidates) {
            if (!in_sinks.isset(ps->idx))
                psc->add(ps);
        }
        return psc;
    }

    // Output some reasonably informative information about the megatrap
    void dump() {
        std::cout << " -{ MegaTrap }-\n" << std::endl;
        std::cout << "Candidates: " << candidates->size() << std::endl;
        std::cout << "     Sinks: " << sinks.size() << std::endl;
        std::cout << "Trap Valid: " << generate_trap()->istrap(*search_prob, *h2) << std::endl;
    }

};

#endif
