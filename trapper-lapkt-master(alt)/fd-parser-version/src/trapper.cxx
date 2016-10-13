#include <trapper.hxx>
#include <strips_state.hxx>
#include <aptk/string_conversions.hxx>

#include <iostream>
#include <fstream>


using	aptk::agnostic::Fwd_Search_Problem;


Trapper::Trapper()
    : STRIPS_Problem(), m_log_filename( "de.log"), m_plan_filename( "plan.ipc" ) {
}

Trapper::Trapper( std::string domain_file, std::string instance_file )
    : STRIPS_Problem( domain_file, instance_file ), m_log_filename( "de.log" ), m_plan_filename( "plan.ipc" ) {
}

Trapper::~Trapper() {
}


void
Trapper::setup() {
    // MRJ: Call superclass method, then do you own thing here
    STRIPS_Problem::setup();
    std::cout << "PDDL problem description loaded: " << std::endl;
    std::cout << "\tDomain: " << instance()->domain_name() << std::endl;
    std::cout << "\tProblem: " << instance()->problem_name() << std::endl;
    std::cout << "\t#Actions: " << instance()->num_actions() << std::endl;
    std::cout << "\t#Fluents: " << instance()->num_fluents() << std::endl;
}


template <typename Search_Engine>
float Trapper::do_search( Search_Engine& engine, aptk::STRIPS_Problem& plan_prob, float budget, std::string logfile ) {

    //  std::ofstream out( logfile.c_str() );

    engine.start();

    std::vector< aptk::Action_Idx > plan;
    float               cost;

    float ref = aptk::time_used();
    float t0 = aptk::time_used();

    unsigned expanded_0 = engine.expanded();
    unsigned generated_0 = engine.generated();
    unsigned num_traps_before_search = engine.traps_computed();

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
    std::cout << "Traps comuted offline: " << num_traps_before_search << std::endl;
    std::cout << "Traps comuted online: " << engine.traps_computed() - num_traps_before_search<< std::endl;
    std::cout << "PSC Trapped deadends: " << engine.psc_traps_count() << std::endl;
    std::cout << "H2 Trapped deadends: " << engine.h2_traps_count() << std::endl;
    std::cout << "H1 Trapped deadends: " << engine.h1_traps_count() << std::endl;
    std::cout << "Nodes generated during search: " << engine.generated() << std::endl;
    std::cout << "Nodes expanded during search: " << engine.expanded() << std::endl;
    //std::cout << "Nodes Closed Pruned during search: " << engine.pruned_closed() << std::endl;

    //out.close();

    return total_time;
}

template <typename Search_Engine>
float Trapper::do_search_generic( Search_Engine& engine, aptk::STRIPS_Problem& plan_prob, float budget, std::string logfile ) {

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



void Trapper::build_sets(Fwd_Search_Problem &search_prob, H2_Heuristic< Fwd_Search_Problem > &h2,
                std::vector<PartialState*> &A1, std::vector<PartialState*> &A2, std::vector<PartialState*> &A3) {

    std::set<unsigned> a1_traps;
    
    std::set<unsigned> a2_traps_idx;
    Closed_List   closed;

    if( m_candidate_set.compare("h1") == 0 or m_candidate_set.compare("h2") == 0) {
	    return;
	
    }
    for ( unsigned q = 0; q < search_prob.task().fluents().size(); q++ ) {
        bool goal_mutex = false;
        for ( unsigned p = 0; p < search_prob.task().goal().size() && !goal_mutex; p++ ) {
            unsigned g = search_prob.task().goal()[p];
            if (h2.is_mutex(q, g)) {
                goal_mutex = true;
                //std::cout << "Mutex fluent q: " << q << " / " << search_prob.task().fluents()[q]->signature() << std::endl;
                //std::cout << "Mutex fluent g: " << g << " / " << search_prob.task().fluents()[g]->signature() << std::endl;
            }

        }
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

void
Trapper::solve() {

    Fwd_Search_Problem  search_prob( instance() );


    aptk::State         s0( *instance() );
    s0.set( instance()->init() );

    /**
     * Computing Mutexes
     */

    float t0 = aptk::time_used();
    H2_Heuristic< Fwd_Search_Problem >  h2( search_prob );
    float tf = aptk::time_used();
    std::cout << "Time to initialize h^2: " << tf - t0 << " secs" << std::endl;


    t0 = aptk::time_used();
    h2.compute_mutexes_only(s0);
    tf = aptk::time_used();
    std::cout << "Time to evaluate h^2: " << tf - t0 << " secs" << std::endl;

    if (m_search_alg.compare("brfs") == 0) {
	    aptk::search::brfs::BRFS<Fwd_Search_Problem> brfs_engine(search_prob);
	    
	    std::string log_brfs = "brfs.log";
	    float brfs_t = do_search_generic( brfs_engine, *instance(), 0.0f, log_brfs );
	    
	    std::cout<< brfs_t;
	    return ;
    }


    MegaTrap* mt = NULL;

    std::vector<PartialState*> A1;
    std::vector<PartialState*> A2;
    std::vector<PartialState*> A3;
    
    /**
     * Building Tuple Candidates of size 1, 2, or 3
     */

    build_sets(search_prob, h2, A1, A2,A3);
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

    if(candidates == NULL) {
        std::cerr << "CHOOSE candidate set!" <<std::endl;
        exit(1);
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
    PartialStateCollection *psc = mt->generate_trap();
    
    std::cout << "Building match tree for trap..." << std::endl;
    psc->build_match_tree(search_prob);
    
    std::cout << "Done!\n\nFinal trap:\n" << std::endl;
    mt->dump();
    std::cout << std::endl;
    psc->dump(search_prob);
    

    /**
     * Choose what to do with the trap
     */

    // Expands 10.000 states and counts how many where captured by h1, h2, and trap
    if (m_search_alg.compare("brfs_stats") == 0) {
	    BRFS<Fwd_Search_Problem> brfs_engine(search_prob, psc);

	    if( m_candidate_set.compare("h1") == 0){
		    brfs_engine.set_check_h1();
	    }
	    else if( m_candidate_set.compare("h2") == 0){
		    brfs_engine.set_check_h2();
	    }else
		    brfs_engine.set_check_trap();

	    std::string log_brfs = "brfs.log";
	    float brfs_t = do_search( brfs_engine, *instance(), 0.0f, log_brfs );
	    if (mt) 
		    mt->dump();
	    
	    std::cout<< brfs_t;
    }

    //BRFS using Traps
    if (m_search_alg.compare("brfs_trap") == 0) {
	    BRFS_Trapper<Fwd_Search_Problem> brfs_engine(search_prob, psc);	    

	    std::string log_brfs = "brfs.log";
	    float brfs_t = do_search( brfs_engine, *instance(), 0.0f, log_brfs );
	    if (mt) 
		    mt->dump();
	    
	    std::cout<< brfs_t;
    }

    //Astar+LMcut using Traps
    if (m_search_alg.compare("astar_trap") == 0) {
	    BFS_H_Lmcut_Fwd astar_engine( search_prob, psc);	    

	    std::string log_brfs = "astar.log";
	    float brfs_t = do_search( astar_engine, *instance(), 0.0f, log_brfs );
	    if (mt) 
		    mt->dump();
	    
	    std::cout<< brfs_t;
    }

    
}

