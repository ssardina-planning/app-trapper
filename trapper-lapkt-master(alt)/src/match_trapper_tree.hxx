#ifndef __MATCH_TRAPPER_TREE__
#define __MATCH_TRAPPER_TREE__


#include <vector>
#include <strips_state.hxx>
#include <fwd_search_prob.hxx>
#include <iostream>

class PartialState;

class MTNode {
public:

    bool matched;
    bool bottom;
    unsigned switch_fluent;

    MTNode * matched_child;
    MTNode * star_child;

    MTNode(std::vector<PartialState*> states, const aptk::agnostic::Fwd_Search_Problem &prob);
    ~MTNode() {}

    unsigned get_best_fluent(std::vector<PartialState*> states, const aptk::agnostic::Fwd_Search_Problem &prob);
    
    bool check(const aptk::State& s);
    bool check(PartialState& s);

    void dump(std::string delim);
};

#endif
