#include "match_trapper_tree.hxx"
#include "partial_state_collection.hxx"


MTNode::MTNode(std::vector<PartialState*> states, const aptk::agnostic::Fwd_Search_Problem &prob) {

    bottom = false;
    matched = false;

    if (states.size() == 0) {
        bottom = true;
        return;
    }

    // See if we've already satisfied a partial state
    for (auto s : states)
        if (s->fluents.size() == 0)
            matched = true;

    if (matched)
        return;

    switch_fluent = get_best_fluent(states, prob);
    
    std::vector<PartialState*> matched_states;
    std::vector<PartialState*> star_states;

    for (auto s : states) {
        
        PartialState * ps = s->copy();
        
        if (s->holds(switch_fluent)) {
            ps->remove(switch_fluent);
            matched_states.push_back(ps);
        } else
            star_states.push_back(ps);
    }

    matched_child = new MTNode(matched_states, prob);
    star_child = new MTNode(star_states, prob);
}

unsigned MTNode::get_best_fluent(std::vector<PartialState*> states, const aptk::agnostic::Fwd_Search_Problem &prob) {
    
    unsigned best_fluent = 0;
    unsigned best_count = 0;
    
    for (unsigned f = 0; f < prob.task().fluents().size(); f++ ) {
        unsigned count = 0;
        for (auto s : states) {
            if (s->holds(f))
                count++;
        }
        if (count > best_count) {
            best_count = count;
            best_fluent = f;
        }
    }
    return best_fluent;
}

bool MTNode::check(const aptk::State& s) {
    if (matched)
        return true;
    else if (bottom)
        return false;
    else if (s.entails(switch_fluent))
        return (matched_child->check(s) || star_child->check(s));
    else
        return star_child->check(s);
}

bool MTNode::check(PartialState& s) {
    if (matched)
        return true;
    else if (bottom)
        return false;
    else if (s.holds(switch_fluent))
        return (matched_child->check(s) || star_child->check(s));
    else
        return star_child->check(s);
}

void MTNode::dump(std::string delim) {
    if (matched)
        std::cout << delim << "T" << std::endl;
    else if (bottom)
        std::cout << delim << "F" << std::endl;
    else {
        std::cout << delim << "{" << switch_fluent << "}" << std::endl;
        std::cout << delim << " Match:" << std::endl;
        matched_child->dump(delim + "  ");
        std::cout << delim << " Star:" << std::endl;
        star_child->dump(delim + "  ");
    }
}
