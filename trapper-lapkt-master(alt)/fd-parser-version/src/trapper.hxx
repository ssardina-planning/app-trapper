#ifndef __TRAPPER__
#define __TRAPPER__

#include <py_strips_prob.hxx>
#include <aptk/resources_control.hxx>
#include <aptk/bit_set.hxx>
#include <strips_prob.hxx>
#include <strips_state.hxx>
#include <fwd_search_prob.hxx>

#include <aptk/brfs.hxx>
#include <aptk/open_list.hxx>

#include <h_1.hxx>
#include <h_2.hxx>


#include <iostream>
#include <fstream>
#include <set>
#include <queue>
#include <vector>

#include "brfs_trapper.hxx"
#include "at_bfs_trapper.hxx"

#include "partial_state_collection.hxx"
#include "closed_partial_states.hxx"
#include "mega_trap.hxx"
#include "h_lmcut.hxx"


using   aptk::agnostic::Fwd_Search_Problem;
using   aptk::agnostic::H2_Heuristic;
using   aptk::search::trapper::BRFS;
using   aptk::search::trapper::BRFS_Trapper;
using 	aptk::agnostic::H1_Heuristic;

//Astar
using 	aptk::search::Open_List;
using	aptk::search::Node_Comparer;
using	aptk::search::bfs::AT_BFS_SQ_SH;
using 	aptk::agnostic::lmcut::LMCUT_Heuristic;
using	aptk::agnostic::lmcut::H_Max_Evaluation_Function;

typedef		aptk::search::bfs::Node< aptk::State >	Search_Node;
typedef		Node_Comparer< Search_Node >					Tie_Breaking_Algorithm;
typedef		Open_List< Tie_Breaking_Algorithm, Search_Node >		BFS_Open_List;
typedef		LMCUT_Heuristic<Fwd_Search_Problem, H_Max_Evaluation_Function>	H_lmcut_Fwd;
typedef		AT_BFS_SQ_SH< Fwd_Search_Problem, H_lmcut_Fwd, BFS_Open_List >	BFS_H_Lmcut_Fwd;


typedef     Closed_Partial_State< PartialState >           Closed_List;


class   Trapper : public STRIPS_Problem
{
public:

    Trapper( );
    Trapper( std::string, std::string );
    virtual ~Trapper();


    virtual void setup();
    void    solve();


    std::string m_log_filename;
    std::string m_plan_filename;
    std::string     m_search_alg;
    std::string     m_candidate_set;
    bool            m_show_novelty_table;


protected:
    template <typename Search_Engine>
    float do_search( Search_Engine& engine, aptk::STRIPS_Problem& plan_prob, float budget, std::string logfile );
    template <typename Search_Engine>
    float do_search_generic( Search_Engine& engine, aptk::STRIPS_Problem& plan_prob, float budget, std::string logfile );
    void build_sets(Fwd_Search_Problem &search_prob, H2_Heuristic< Fwd_Search_Problem > &h2,
            std::vector<PartialState*> &A1, std::vector<PartialState*> &A2, std::vector<PartialState*> &A3);

};




#endif
