#ifndef __IW_TRAPS__
#define __IW_TRAPS__

#include "partial_state_collection.hxx"
#include <h_2.hxx>
#include <fwd_search_prob.hxx>
#include <strips_state.hxx>
#include <stack>


class iw_traps {
public:

    std::queue<PartialStateCollection*>	      m_open;
    //std::stack<PartialStateCollection*>	      m_open;
    std::vector<PartialState*>*               m_candidates;
    std::vector<PartialStateCollection*>      m_traps;
    aptk::Bit_Set	                      m_novelty_table;
    aptk::agnostic::Fwd_Search_Problem*                       m_prob;
    aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem >*       m_h2;

    unsigned				      m_exp_count;
    unsigned				      m_gen_count;

    iw_traps( aptk::agnostic::Fwd_Search_Problem* prob, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > *h2 ) :
        m_prob(prob), m_h2(h2), m_exp_count(0), m_gen_count(0) {}
    virtual ~iw_traps( ) {}

    void set_candidates( std::vector<PartialState*>* c ) {
        m_candidates = c;
    }
    virtual void initialize_novelty( ) {
        if(!m_candidates) {
            std::cerr<< "Set candidate set first!" << std::endl;
            std::exit(2);
        }


        m_novelty_table.resize( m_candidates->size() );
    }

    PartialStateCollection*  get_node() {
        PartialStateCollection *next = NULL;
        if(! m_open.empty() ) {
            next = m_open.front();
            //next = m_open.top();
            m_open.pop();
        }
        return next;
    }

    virtual bool check_novelty_1( unsigned cand_idx, PartialStateCollection* head ) {
        return ! m_novelty_table.isset(cand_idx);
    }
    virtual void update_novelty_table(unsigned cand_idx, PartialStateCollection* head ) {
        m_novelty_table.set(cand_idx);
    }
    virtual void reset_novelty_table() {
        m_novelty_table.reset();
    }

    virtual void dump_novelty_table() {


        std::cout << "novelty_table{";
        for(unsigned k = 0; k < m_candidates->size(); k++) {
            if( m_novelty_table.isset(k) ){
                std::cout << k << " ";
		m_candidates->at(k)->dump(*m_prob);
	    }
        }
        std::cout << "}" << std::endl;

    }

    virtual bool is_trapped( const aptk::State& s ) {
        for (unsigned i = 0; i < m_traps.size(); i++)
            if (m_traps[i]->traps(s))
                return true;
        return false;
    }

    virtual void process( PartialStateCollection* head) {

        // std::vector<PartialState *>& states_to_entail = head->exit_states;

	
        // // Check every partial state bi not entailed by the trap...
        // for (unsigned int i = 0; i < states_to_entail.size(); i++) {
        //     PartialState* bi = states_to_entail[i];

	//     unsigned heuristic = 0;
	//     unsigned selected_candidate = 0;

	    
	//     //std::cout << "State that entails ";
	//     //bi->dump(*m_prob);
		    
        //     for (unsigned int k = 0; k < m_candidates->size(); k++) {

		
	// 	//check novelty 1
	// 	if( !check_novelty_1(k, head) ) continue;

        //         PartialState* cand = m_candidates->at(k);
        //         if( bi->entails( *cand ) ) {

	// 	    unsigned current_heuristic = 0;
	// 	    for( auto p : m_candidates->at(k)->fluents)
	// 		current_heuristic += m_prob->task().mutexes().groups_indexes( p ).size();

	// 	    if(current_heuristic > heuristic){
	// 		heuristic = current_heuristic;
	// 		selected_candidate = k;
	// 	    }
	// 	    //std::cout << "\t New  Candidate: "<< current_heuristic << " ";
	// 	    //m_candidates->at(selected_candidate)->dump(*m_prob);


        //         }
        //     }
	    
	//     if(heuristic > 0){
	// 	PartialState* cand = m_candidates->at(selected_candidate);
		    
	// 	PartialStateCollection* psc = new PartialStateCollection( );
	// 	for( auto ps : head->states)
	// 	    psc->add( ps );
	// 	psc->add( cand );
		    
	// 	inc_gen();
	// 	m_open.push( psc );
		    
	// 	//std::cout << "\t New SELCTED Candidate: "<< heuristic << " ";
	// 	//m_candidates->at(selected_candidate)->dump(*m_prob);
		    
		    
	// 	//set seen candidate k
	// 	update_novelty_table(selected_candidate,head);

	// 	//If a candidate selected for closing one exit_state, reevaluate the exiting states
	// 	break;    
	//     }
	    
        // }
	
    }

    bool do_search() {

        PartialStateCollection *head = get_node();
        float t0 = aptk::time_used();
        while(head) {
            if( head->is_trap_and_exits( *m_prob, *m_h2 ) ) {
                m_traps.push_back( head );
                // std::cout << "New Trap!" << std::endl;
		//head->dump(*m_prob);
		//dump_traps(*m_prob);
		// dump_novelty_table();
            }
            //if (head->states.size() < 13)
                process(head);
	    // else{
	    // 	while(! m_open.empty() ) {
	    // 	    PartialStateCollection* next = m_open.front();
	    // 	    //PartialStateCollection* next = m_open.top();
	    // 	    m_open.pop();
	    // 	    delete next;		 
	    // 	}
	    // }
            inc_exp();
            if( expanded() % 1000 == 0 ) {
                std::cout << "Expanded / Generated (#traps / #depth): "<< expanded() << " / " << generated() << " (" << m_traps.size() << " / " << head->states.size() << ")" << std::endl;
                if ((aptk::time_used() - t0) > 1)
                    break;
            }
            head = get_node();
	    //head->dump(*m_prob);
        }
        if( m_traps.empty() )
            return false;

        return true;

    }
    virtual bool find_traps() {

        bool found_traps = false;
        /**
         * initialize candidate traps
         */

        for(unsigned i = 0; i < m_candidates->size(); i++) {//414

	    if( !check_novelty_1(i, NULL) ) continue;
	    update_novelty_table(i, NULL);

	    // { (AT PLAYER-01 POS-01-02) (AT STONE-02 POS-FOO) (AT STONE-01 POS-BOO3) }
	    // (AT PLAYER-01 POS-02-03) (AT STONE-02 POS-FOO) (AT STONE-01 POS-BOO3) 
	    //std::cout << "\t New STARTING Candidate: " << i << " - ";
	    //m_candidates->at(i)->dump(*m_prob);

            PartialStateCollection* psc = new PartialStateCollection();
            psc->add( m_candidates->at(i), i);
            m_open.push( psc );

            inc_gen();

            //std::cout << "starting with ";
            //cand->dump();

	    /**
	     * Comment to consider candidates size 2 as roots of iw
	     */
            //if( m_candidates->at(i)->fluents.size() > 1 ) break;
            if( do_search() ) found_traps = true;

	    /**
	     * Comment to make pruning more agressive
	     */
            //reset_novelty_table();
	    // dump_traps(*m_prob);
	     // std::exit(1);
        }
        //if( do_search() ) found_traps = true;
        return found_traps;

    }


    void	       	inc_exp()			{
        m_exp_count++;
    }
    unsigned		expanded() const		{
        return m_exp_count;
    }

    void	       	inc_gen()			{
        m_gen_count++;
    }
    unsigned		generated() const		{
        return m_gen_count;
    }


    void dump_traps(aptk::agnostic::Fwd_Search_Problem &prob) { // sounds like donald_tramps... argh..
        unsigned i=0;
        for(auto tr : m_traps ) {
            std::cout<< "\nTrap "<< i++ <<":"<<std::endl;
            for(auto ps : tr->states)
                ps->dump(*m_prob);
        }

    }

};


#endif
