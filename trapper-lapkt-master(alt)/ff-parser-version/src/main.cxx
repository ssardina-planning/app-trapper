#include <boost/program_options.hpp>
#include <aptk/resources_control.hxx>
#include <aptk/bit_set.hxx>
#include <aptk/string_conversions.hxx>
#include <ff_to_aptk.hxx>
#include <types.hxx>
#include <strips_prob.hxx>
#include <strips_state.hxx>
#include <fwd_search_prob.hxx>

#include <aptk/brfs.hxx>
#include <aptk/open_list.hxx>

#include <h_2.hxx>
#include <h_1.hxx>

#include <iostream>
#include <ostream>
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

/**
 * Dependencies for DFS+ satisficing Planner
 */
#include <novelty.hxx>
#include <novelty_partition.hxx>
#include <rp_heuristic.hxx>
#include <landmark_graph.hxx>
#include <landmark_graph_generator.hxx>

#include "rp_iw_trapper.hxx"
#include "serialized_search_trapper.hxx"
#include "dfs_plus_trapper.hxx"

namespace po = boost::program_options;

using   aptk::STRIPS_Problem;
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


typedef  Closed_Partial_State< PartialState >           Closed_List;

using    aptk::agnostic::Fwd_Search_Problem;

/**
* Definitions for DFS+
*/

using	aptk::agnostic::H_Add_Evaluation_Function;
using	aptk::agnostic::Relaxed_Plan_Heuristic;
using 	aptk::agnostic::Landmarks_Graph_Generator;
using 	aptk::agnostic::Landmarks_Graph;

using 	aptk::agnostic::Novelty;
using 	aptk::agnostic::Novelty_Partition;
using	aptk::search::novelty_spaces::RP_IW;
using	aptk::search::novelty_spaces::DFS_Plus;
using	aptk::search::Serialized_Search;

typedef		aptk::search::novelty_spaces::Node< aptk::State >	        IW_Node;
typedef         Novelty_Partition<Fwd_Search_Problem, IW_Node>                  H_Novel_Fwd;
typedef         Landmarks_Graph_Generator<Fwd_Search_Problem>                   Gen_Lms_Fwd;

typedef		H1_Heuristic<Fwd_Search_Problem, H_Add_Evaluation_Function>	H_Add_Fwd; 
typedef		Relaxed_Plan_Heuristic< Fwd_Search_Problem, H_Add_Fwd >		H_Add_Rp_Fwd;

typedef		RP_IW< Fwd_Search_Problem, H_Novel_Fwd, H_Add_Rp_Fwd >	        RP_IW_Fwd;
typedef		DFS_Plus< Fwd_Search_Problem, RP_IW_Fwd, IW_Node >              DFS_Plus_Fwd;


std::string m_log_filename("de.log");
std::string m_plan_filename("plan.ipc");
std::string     m_search_alg;
std::string     m_candidate_set;



void process_command_line_options( int ac, char** av, po::variables_map& vars ) {
    po::options_description desc( "Options:" );

    desc.add_options()
    ( "help", "Show help message" )
    ( "domain", po::value<std::string>(), "Input PDDL domain description" )
    ( "problem", po::value<std::string>(), "Input PDDL problem description" )
    ( "problem_trap", po::value<std::string>(), "Input PDDL problem (with future goals) description" )
    ( "search", po::value<std::string>(), "brfs_stats, brfs_trap, astar_trap, dfs+_trap" )
    ( "candidates", po::value<std::string>(), "a1, a2, a3" )
    ( "goals", po::value<int>(), "no of actual goals (at the end)" )
    ( "plan", po::value<std::string>(), "plan file" )
    ;

    try {
        po::store( po::parse_command_line( ac, av, desc ), vars );
        po::notify( vars );
    }
    catch ( std::exception& e ) {
        std::cerr << "Error: " << e.what() << std::endl;
        std::exit(1);
    }
    catch ( ... ) {
        std::cerr << "Exception of unknown type!" << std::endl;
        std::exit(1);
    }

    if ( vars.count("help") ) {
        std::cout << desc << std::endl;
        std::exit(0);
    }

}



void build_sets(Fwd_Search_Problem &search_prob, H2_Heuristic< Fwd_Search_Problem > &h2,
                std::vector<PartialState*> &A1, std::vector<PartialState*> &A2, std::vector<PartialState*> &A3, int goal_index) {

    std::set<unsigned> a1_traps;
    
    std::set<unsigned> a2_traps_idx;
    Closed_List   closed;

    if( m_candidate_set.compare("h1") == 0 or m_candidate_set.compare("h2") == 0) {
	    return;
	
    }
    for ( unsigned q = 0; q < search_prob.task().fluents().size(); q++ ) {
        bool goal_mutex = false;
        //for ( unsigned p = 0; p < search_prob.task().goal().size() && !goal_mutex; p++ ) {
            unsigned g = search_prob.task().goal()[goal_index];
            if (h2.is_mutex(q, g)) {
                goal_mutex = true;
                //std::cout << "Mutex fluent q: " << q << " / " << search_prob.task().fluents()[q]->signature() << std::endl;
                //std::cout << "Mutex fluent g: " << g << " / " << search_prob.task().fluents()[g]->signature() << std::endl;
            }

       // }
        if (goal_mutex) {
            //std::cout << "Mutex fluent: " << q << " / " << search_prob.task().fluents()[q]->signature() << std::endl;
            PartialState *ps = new PartialState();
            ps->add(q);
	    ps->update_hash();
	    ps->idx = A1.size();
            A1.push_back(ps);
	    if( m_candidate_set.compare("a1") != 0) {

		    A2.push_back(ps);//add A1 to A2 and A3
		    A3.push_back(ps);//add A1 to A2 and A3
		    
		    PartialStateCollection* psc = new PartialStateCollection( );
		    psc->add( ps );
		    if (psc->istrap(search_prob, h2)) {
			    //std::cout << "Adding singleton trap: ";
			    //ps->dump(search_prob);
			    //std::cout << std::endl;
			    
			    
			    a1_traps.insert(q);
		    }
		    
		    delete psc;
	    }
	}
    }
    if( m_candidate_set.compare("a1") == 0) {
	    return;
	
    }
    for ( unsigned q = 0; q < search_prob.task().fluents().size(); q++ ) {
        for ( unsigned i = 0; i < A1.size(); i++) {
            if (((*(A1[i]->fluents.begin())) != q) &&
                    (!(A1[i]->mutex_with(q, h2)) && (a1_traps.count(q) == 0) && (a1_traps.count(*(A1[i]->fluents.begin())) == 0))) {
                PartialState *ps = A1[i]->copy();
                ps->add(q);
		ps->update_hash();
		ps->idx = A2.size();

                A2.push_back(ps);
		
		if( m_candidate_set.compare("a2") != 0) {
			A3.push_back(ps);
			//ps->dump(search_prob);
			
			PartialStateCollection* psc = new PartialStateCollection( );
			psc->add( ps );
			if (psc->istrap(search_prob, h2)) {
				//std::cout << "Adding singleton trap: ";
				//ps->dump(search_prob);
				//std::cout << std::endl;
				
				a2_traps_idx.insert( A2.size()-1 );
			}
			
			delete psc;
		}
            }
        }
    }


    if( m_candidate_set.compare("a2") == 0) {
	    return;
	
    }   
    for ( unsigned q = 0; q < search_prob.task().fluents().size(); q++ ) {
	    for ( unsigned i = 0; i < A2.size(); i++) {
		    //Avoid adding a candidate of size 2, if A2 contains a trap of size 1 already
		    if( A2[i]->fluents.size() == 1 ) continue;
		    

		    if (  ! A2[i]->holds(q) &&
			  ! A2[i]->mutex_with(q, h2) && a1_traps.count(q) == 0  && 
			  a2_traps_idx.count(i) == 0  ) {
                
			    //Avoid adding a tuple of size 3 that is already a trap of size 2
			    bool already_entailed = false;
			    for( auto j : a2_traps_idx ){
				    for( auto r : A2[i]->fluents){
					    if(A2[j]->holds(q) and A2[j]->holds(r) ){
						    already_entailed = true;
						    break;
					    }
				    }
				    if(!already_entailed) break;
			    }
			    if(already_entailed) continue;
			    
			    PartialState *ps = A2[i]->copy();
			    ps->add(q);			    
			    ps->update_hash();
			    ps->idx = A3.size();

			    if( closed.retrieve(ps) == NULL){
				    A3.push_back(ps);
			    }
			    else{
				    delete ps;
				    continue;
			    }
			    closed.put(ps);

			    //std::cout << "\t\t"<<q<<" - "<<search_prob.task().fluents()[q]->signature() << std::endl;
			    //ps->dump(search_prob);
		    }
		    
		    
	    }
    }
    
    closed.clear();
}


void dump_fluents(Fwd_Search_Problem &search_prob, H2_Heuristic< Fwd_Search_Problem > &h2) {
    std::cout << "\nFluent # / Fluent Name" << std::endl;
    for ( unsigned q = 0; q < search_prob.task().fluents().size(); q++ )
        std::cout << q << " / " << search_prob.task().fluents()[q]->signature() << std::endl;

    // search_prob.task().print_actions( std::cout );

    // for ( unsigned q = 0; q < search_prob.task().init().size(); q++ ){
    //   unsigned idx = search_prob.task().init()[q];
    //   std::cout << "Init: "<<q << " / " << search_prob.task().fluents()[idx]->signature() << std::endl;
    // }

}

template <typename Search_Engine>
float do_search( Search_Engine& engine, STRIPS_Problem& plan_prob, float budget, std::string logfile, std::string planfile = "" ) {

    //  std::ofstream out( logfile.c_str() );

    engine.start();

    std::vector< aptk::Action_Idx > plan;
    float               cost;

    float ref = aptk::time_used();
    float t0 = aptk::time_used();

    unsigned expanded_0 = engine.expanded();
    unsigned generated_0 = engine.generated();
    unsigned num_traps_before_search = engine.traps_computed();

    //std::ostream &output = std::cout;

    std::fstream f;

    if (!planfile.empty()){
       
       f.open(planfile.data(),std::fstream::out | std::fstream::trunc);
       
   }

    if ( engine.find_solution( cost, plan ) ) {
        std::cout << "Plan found with cost: " << cost << std::endl;
        for ( unsigned k = 0; k < plan.size(); k++ ) {
            
            const aptk::Action& a = *(plan_prob.actions()[ plan[k] ]);
            (planfile.empty() ? std::cout : f) << k+1 << ": ";
            (planfile.empty() ? std::cout : f) << a.signature();
            (planfile.empty() ? std::cout : f) << std::endl;
        }
        float tf = aptk::time_used();
        unsigned expanded_f = engine.expanded();
        unsigned generated_f = engine.generated();
        std::cout << "Time: " << tf - t0 << std::endl;
        std::cout << "Generated: " << generated_f - generated_0 << std::endl;
        std::cout << "Expanded: " << expanded_f - expanded_0 << std::endl;
        t0 = tf;
        expanded_0 = expanded_f;
        generated_0 = generated_f;
        plan.clear();
    }else{
	std::cout << "Plan found with cost: 0" << std::endl;
    }
    float total_time = aptk::time_used() - ref;
    std::cout << "Total time: " << total_time << std::endl;
    std::cout << "Traps comuted offline: " << num_traps_before_search << std::endl;
    std::cout << "Traps comuted online: " << engine.traps_computed() - num_traps_before_search<< std::endl;
    std::cout << "PSC Trapped deadends: " << engine.psc_traps_count() << std::endl;
    std::cout << "H2 Trapped deadends: " << engine.h2_traps_count() << std::endl;
    std::cout << "H1 Trapped deadends: " << engine.h1_traps_count() << std::endl;
    std::cout << "Nodes generated during search: " << engine.generated() << std::endl;
    std::cout << "Nodes expanded during search: " << engine.expanded() << std::endl;
    //std::cout << "Nodes Closed Pruned during search: " << engine.pruned_closed() << std::endl;

    //out.close();
    if (!planfile.empty()) f.close();

    return total_time;
}

template <typename Search_Engine>
float do_search_generic( Search_Engine& engine, aptk::STRIPS_Problem& plan_prob, float budget, std::string logfile ) {

    //  std::ofstream out( logfile.c_str() );

    engine.start();

    std::vector< aptk::Action_Idx > plan;
    float               cost;

    float ref = aptk::time_used();
    float t0 = aptk::time_used();

    unsigned expanded_0 = engine.expanded();
    unsigned generated_0 = engine.generated();

    if ( engine.find_solution( cost, plan ) ) {
        std::cout << "\nPlan found with cost: " << cost << std::endl;
        for ( unsigned k = 0; k < plan.size(); k++ ) {
            std::cout << k+1 << ". ";
            const aptk::Action& a = *(plan_prob.actions()[ plan[k] ]);
            std::cout << a.signature();
            std::cout << std::endl;
        }
        float tf = aptk::time_used();
        unsigned expanded_f = engine.expanded();
        unsigned generated_f = engine.generated();
        std::cout << "Time: " << tf - t0 << std::endl;
        std::cout << "Generated: " << generated_f - generated_0 << std::endl;
        std::cout << "Expanded: " << expanded_f - expanded_0 << std::endl;
        t0 = tf;
        expanded_0 = expanded_f;
        generated_0 = generated_f;
        plan.clear();
    }
    float total_time = aptk::time_used() - ref;
    std::cout << "Total time: " << total_time << std::endl;
    std::cout << "Nodes generated during search: " << engine.generated() << std::endl;
    std::cout << "Nodes expanded during search: " << engine.expanded() << std::endl;
    //std::cout << "Nodes Closed Pruned during search: " << engine.pruned_closed() << std::endl;

    //out.close();

    return total_time;
}

int main( int argc, char** argv ) {

    po::variables_map vm;

    process_command_line_options( argc, argv, vm );

    if ( !vm.count( "domain" ) ) {
        std::cerr << "No PDDL domain was specified!" << std::endl;
        std::exit(1);
    }

    if ( !vm.count( "problem" ) ) {
        std::cerr << "No PDDL problem was specified!" << std::endl;
        std::exit(1);
    }

    if ( !vm.count( "search" ) ) {
        std::cerr << "select search Alg!" << std::endl;
        std::exit(1);
    }

/*
    if ( !vm.count( "candidates" ) ) {
        std::cerr << "select A1 or A2!" << std::endl;
        std::exit(1);
    }
*/

    STRIPS_Problem  prob,prob_goal;

    aptk::FF_Parser::get_problem_description( vm["domain"].as<std::string>(), vm["problem"].as<std::string>(), prob, true );
    //aptk::FF_Parser::get_problem_description( vm["domain"].as<std::string>(), vm["problem"].as<std::string>(), prob_goal, true );

    std::cout << "PDDL problem description loaded: " << std::endl;
    std::cout << "\tDomain: " << prob.domain_name() << std::endl;
    std::cout << "\tProblem: " << prob.problem_name() << std::endl;
//    std::cout << "\tProblem_goal: " << prob.problem_name() << std::endl;
    std::cout << "\t#Actions: " << prob.num_actions() << std::endl;
    std::cout << "\t#Fluents: " << prob.num_fluents() << std::endl;

    Fwd_Search_Problem  search_prob( &prob );
    aptk::State         s0( prob );
    s0.set( prob.init() );

    /**
     * Computing Mutexes
     */

    float t0 = aptk::time_used();
    H2_Heuristic< Fwd_Search_Problem >  h2( search_prob );
    float tf = aptk::time_used();
    std::cout << "Time to initialize h^2: " << tf - t0 << " secs" << std::endl;

    float h;
    t0 = aptk::time_used();
    h2.eval( s0, h );
    tf = aptk::time_used();
    std::cout << "Time to evaluate h^2: " << tf - t0 << " secs" << std::endl;
    std::cout << "h^2 value = " << h << std::endl;

    MegaTrap* mt = NULL;
    PartialStateCollection *psc = new PartialStateCollection();
    PartialStateCollection *psc_tmp = NULL;

if(vm.count( "candidates" ) > 0) {
        //std::cerr << "CHOOSE candidate set!" <<std::endl;
        //exit(1);

for (int i=0;i<prob.goal().size();i++){

    std::vector<PartialState*> A1;
    std::vector<PartialState*> A2;
    std::vector<PartialState*> A3;

    m_candidate_set = vm["candidates"].as<std::string>();
    
    /**
     * Building Tuple Candidates of size 1, 2, or 3
     */
    
    build_sets(search_prob, h2, A1, A2,A3,i);
    //dump_fluents(search_prob, h2);
    //testing(search_prob, h2, A1, A2);
    //testing2(search_prob, h2);


    std::cout << "A1 Candidates: " << A1.size() << std::endl;
    std::cout << "A2 Candidates: " << A2.size() << std::endl;
    std::cout << "A3 Candidates: " << A3.size() << std::endl;

    std::vector<PartialState*>* candidates = NULL;


    if( m_candidate_set.compare("a1") == 0) {
	candidates = &A1;
	
    }
    else if( m_candidate_set.compare("a2") == 0) {
	candidates = &A2;
	
    }   
    else if( m_candidate_set.compare("a3") == 0) {
	candidates = &A3;
	
    }
    else {
	candidates = &A1;
	
    }

    

    /**
     * Let's build the megatrap (union of all traps) using candidates...
     */
    
    std::cout << "--> Trying to build the MEGA TRAP!!!" << std::endl;

    mt = new MegaTrap(*candidates, h2, search_prob);
      
    std::cout << "Generating the graph..." << std::endl;
    mt->generate_graph();
    
    std::cout << "Propagating the sink nodes!" << std::flush;
    mt->propagate_sinks();
    
    std::cout << "Building the resulting mega trap..." << std::endl;
    psc_tmp = mt->generate_trap();
    
    //std::cout << "Building match tree for trap..." << std::endl;
    //psc->build_match_tree(search_prob);
    psc->add(psc_tmp);
    
    std::cout << "Done!\n\nFinal trap:\n" << std::endl;
    mt->dump();
    std::cout << std::endl;          
    

} //end for i loop
 
        psc->dump(search_prob);  
    /**
     * Choose what to do with the trap
     */
}
    m_search_alg = vm["search"].as<std::string>();

    std::string planfile="";
    
    if (vm.count("plan")>0) planfile = vm["plan"].as<std::string>();

    //haccking goal state...
    if (vm.count("goals")>0){
         aptk::Fluent_Vec g;
         //aptk::Fluent_Vec::reverse_iterator rit = prob.goal().rbegin();
         aptk::Fluent_Vec::iterator rit = prob.goal().begin();
         for (int i=0;i<vm["goals"].as<int>();i++){
            std::cout << "Goal " << i << " - " << search_prob.task().fluents()[*rit]->signature() << std::endl; 
           g.push_back(*rit);rit++;
           
         }
            
         std::cout<< "Future Goals size:" <<prob.goal().size() <<std::endl;
    
         //g.resize(vm["goals"].as<int>());
    
         STRIPS_Problem::set_goal(prob,g);
         std::cout<< "Goals size:" <<prob.goal().size() <<std::endl;
    }
    Fwd_Search_Problem  search_prob_goal( &prob );
    // Expands 10.000 states and counts how many where captured by h1, h2, and trap
    if (m_search_alg.compare("brfs_stats") == 0) {
	    BRFS<Fwd_Search_Problem> brfs_engine(search_prob_goal, psc);

	    if( m_candidate_set.compare("h1") == 0){
		    brfs_engine.set_check_h1();
	    }
	    else if( m_candidate_set.compare("h2") == 0){
		    brfs_engine.set_check_h2();
	    }else
		    brfs_engine.set_check_trap();

	    std::string log_brfs = "brfs.log";
	    float brfs_t = do_search( brfs_engine, prob, 0.0f, log_brfs, planfile );
	    if (mt) 
		    mt->dump();
	    
	    std::cout<< brfs_t;
    }
    
    //BRFS using Traps
    if (m_search_alg.compare("brfs_trap") == 0) {
	    BRFS_Trapper<Fwd_Search_Problem> brfs_engine(search_prob_goal, psc);	    

	    std::string log_brfs = "brfs.log";
	    float brfs_t = do_search( brfs_engine, prob, 0.0f, log_brfs, planfile);
	    //if (mt) 
	//	    mt->dump();
	    
	    std::cout<< brfs_t;
    }

    //Astar+LMcut using Traps
    if (m_search_alg.compare("astar_trap") == 0) {
	    BFS_H_Lmcut_Fwd astar_engine( search_prob_goal, psc);	    

	    std::string log_brfs = "astar.log";
	    float brfs_t = do_search( astar_engine, prob, 0.0f, log_brfs, planfile );
	  //  if (mt) 
	//	    mt->dump();
	    
	    std::cout<< brfs_t;
    }

      //DFS+ using Traps
    if (m_search_alg.compare("dfs+_trap") == 0) {

	    Gen_Lms_Fwd    gen_lms( search_prob_goal );
	    Landmarks_Graph graph( prob );
	    
	    gen_lms.set_only_goals( true );
	    gen_lms.compute_lm_graph_set_additive( graph );
	    
	    std::cout << "Serializing #Goals: " << graph.num_landmarks() << std::endl;
	    
	    
	    std::cout << "Starting search with DFS..." << std::endl;
	    
	    DFS_Plus_Fwd dfs_engine( search_prob_goal, psc );
	    dfs_engine.set_goal_agenda( &graph );
	    dfs_engine.set_bound(2);
	    
	    std::string log_dfs = "dfs.log";	
	    float dfs_t = do_search( dfs_engine, prob, 0.0f, log_dfs, planfile );
	    
	    std::cout << "DFS+ search completed in " << dfs_t << " secs, check '" << m_log_filename << "' for details" << std::endl;
    } 

    return 0;


}
