#! /usr/bin/env python
import fd.grounding
import sys
import os
from libtrapper import Trapper 
# MRJ: Profiler imports
#from prof import profiler_start, profiler_stop

def main( domain_file, problem_file, search_alg, candidate_set ) :
	task = Trapper( )

        task.ignore_action_costs = True
        
	fd.grounding.default( domain_file, problem_file, task )

	#NIR: Uncomment to check what actions are being loaded
	for i in range( 0, task.num_actions() ) :
		task.print_action( i )

	# NIR: Setting planner parameters is as easy as setting the values
	# of Python object attributes
	
	# NIR: Maximum bound on width is set to 1
	task.iw_bound = 2

	# NIR: log filename set
	task.log_filename = 'trapper.log'

	# NIR: search alg
	task.search = search_alg

	# NIR: candidate set
	task.candidates = candidate_set

        task.show_novelty_table = False

	# NIR: Comment line below to deactivate profiling
	#profiler_start( 'trapper.prof' )

	# NIR: We call the setup method in SIW_Planner
	task.setup()

	# NIR: And then we're ready to go
	task.solve()

	#NIR: Comment lines below to deactivate profile
	#profiler_stop()	

	#rv = os.system( 'google-pprof --pdf libsiw.so siw.prof > siw.pdf' )
	#if rv != 0 :
	#	print >> sys.stderr, "An error occurred while translating google-perftools profiling information into valgrind format"


def debug() :
	main( "/Users/nirlipo/Sandboxes/trapper/trapper/examples/domain.pddl",
              "/Users/nirlipo/Sandboxes/trapper/trapper/examples/prob3.pddl",
              "brfs",
	      "a1" )

if __name__ == "__main__":
	main( sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4] )

