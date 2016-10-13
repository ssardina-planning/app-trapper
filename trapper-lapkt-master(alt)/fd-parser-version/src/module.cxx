#include <trapper.hxx>
using namespace boost::python;

BOOST_PYTHON_MODULE( libtrapper )
{
    class_<Trapper>("Trapper")
	.def( init< std::string, std::string >() )
	.def( "add_atom", &Trapper::add_atom )
	.def( "add_action", &Trapper::add_action )
	.def( "add_mutex_group", &Trapper::add_mutex_group )
	.def( "num_atoms", &Trapper::n_atoms )
	.def( "num_actions", &Trapper::n_actions )
	.def( "get_atom_name", &Trapper::get_atom_name )
	.def( "get_domain_name", &Trapper::get_domain_name )
	.def( "get_problem_name", &Trapper::get_problem_name )
	.def( "add_precondition", &Trapper::add_precondition )
	.def( "add_effect", &Trapper::add_effect )
	.def( "add_cond_effect", &Trapper::add_cond_effect )
	.def( "set_cost", &Trapper::set_cost )
	.def( "notify_negated_conditions", &Trapper::notify_negated_conditions )
	.def( "create_negated_fluents", &Trapper::create_negated_fluents )
	.def( "set_init", &Trapper::set_init )
	.def( "set_goal", &Trapper::set_goal )
	.def( "set_domain_name", &Trapper::set_domain_name )
	.def( "set_problem_name", &Trapper::set_problem_name )
	.def( "write_ground_pddl", &Trapper::write_ground_pddl )
	.def( "print_action", &Trapper::print_action )
	.def( "setup", &Trapper::setup )
	.def( "solve", &Trapper::solve )
	.def_readwrite( "parsing_time", &Trapper::m_parsing_time )
	.def_readwrite( "ignore_action_costs", &Trapper::m_ignore_action_costs )
	.def_readwrite( "log_filename", &Trapper::m_log_filename )
	.def_readwrite( "candidates", &Trapper::m_candidate_set )
	.def_readwrite( "search", &Trapper::m_search_alg )
	.def_readwrite( "show_novelty_table", &Trapper::m_show_novelty_table )
	;
}

