#ifndef __IW_TRAPS_PLUS__
#define __IW_TRAPS_PLUS__


#include "iw_traps.hxx"
#include <h_2.hxx>
#include <fwd_search_prob.hxx>





class iw_plus_traps : public iw_traps {
public:
    std::vector<aptk::Bit_Set>         m_novelty_table_vec;

    iw_plus_traps( aptk::agnostic::Fwd_Search_Problem* prob, aptk::agnostic::H2_Heuristic< aptk::agnostic::Fwd_Search_Problem > *h2 ) :
        iw_traps(prob,h2) {}
    ~iw_plus_traps( ) {}

    virtual void initialize_novelty( ) {
        if(!m_candidates) {
            std::cerr<< "Set candidate set first!" << std::endl;
            std::exit(2);
        }


        m_novelty_table_vec.resize( m_candidates->size() );
        for(unsigned i = 0; i < m_candidates->size(); i++)
            m_novelty_table_vec[i].resize( m_candidates->size() );
    }

    virtual bool check_novelty_1( unsigned cand_idx, PartialStateCollection* head ) {
	if(!head) {
	    if( ! m_novelty_table_vec[1].isset(cand_idx) )
		return true;
	}
	else if( ! m_novelty_table_vec[head->trap_size + 1].isset(cand_idx) )
            return true;

        return false;
    }
    virtual void update_novelty_table(unsigned cand_idx, PartialStateCollection* head ) {
	if(!head)
	    m_novelty_table_vec[1].set(cand_idx);
	else
	    m_novelty_table_vec[head->trap_size].set(cand_idx);
    }
    virtual void reset_novelty_table() {
        for(unsigned i = 0; i < m_candidates->size(); i++)
            m_novelty_table_vec[i].reset();
    }

    virtual void dump_novelty_table() {

        for(unsigned i = 0; i < m_candidates->size(); i++) {
            std::cout << "novelty_table_"<<i<<"{";
            for(unsigned k = 0; k < m_candidates->size(); k++) {
                if( m_novelty_table_vec[i].isset(k) )
                    std::cout << k << " ";
            }
            std::cout << "}" << std::endl;
        }
    }

    void process( PartialStateCollection* head) {

        std::vector<PartialState *>& states_to_entail = head->exit_states;

        bool first_novelty_check = true;

        // Check every partial state bi not entailed by the trap...
        //std::cout << "States to entail: " << states_to_entail.size() << std::endl;
        for (unsigned int i = 0; i < states_to_entail.size(); i++) {
            PartialState* bi = states_to_entail[i];

	    bool found_succ = false;
            for (unsigned int k = 0; k < m_candidates->size(); k++) {

                PartialState* cand = m_candidates->at(k);

                bool ok = true;
                for (unsigned int j = 0; ok && j < head->states.size(); j++)
                    if (head->states[j]->entails(*cand)){
                        ok = false;
			break;
		    }
		
                if( bi->entails( *cand ) && ok) {

                    if(first_novelty_check) {
                        //Check Novelty of full state just the first time
                        bool is_novel = false;
                        for( auto idx : head->states_idx )
                            if( ! m_novelty_table_vec[head->trap_size+1].isset(idx) ) {
                                is_novel = true;
                                break;
                            }

                        if( !is_novel && ! m_novelty_table_vec[head->trap_size+1].isset(k) )
                            is_novel = true;


                        //Update the full state just the first time the table + 1
                        for( auto idx : head->states_idx )
                            m_novelty_table_vec[head->trap_size+1].set(idx);
                        m_novelty_table_vec[head->trap_size+1].set(k);
                        first_novelty_check = false;

                        if( ! is_novel ) continue;
                    }
                    // Check novelty of k only after the first time
                    else if( !check_novelty_1(k, head) ) {
                        continue;
                    }

                    PartialStateCollection* psc = new PartialStateCollection( );

                    for( auto ps : head->states)
                        psc->add( ps );

                    //We need the idx to check the novelty table
                    psc->states_idx = head->states_idx;

                    psc->add( cand, k );

                    //we need to know the size of the trap to know which table
                    //to look at
                    psc->trap_size = psc->states.size();


                    //check novelty 1. Not enough with checking just the new item k,
                    //as it will be in a different table[k+1]
                    inc_gen();


                    m_open.push( psc );


                    //set seen candidate k.Not enough with checking just the new item k,
                    //as it will be in a different table[k+1]
                    update_novelty_table(k,psc);

		    found_succ = true;
		    break;
		    
                }

		if(found_succ) break;
            }
        }
    }

};

#endif
