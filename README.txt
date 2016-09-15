These are the experiments used to run LPG adapted for planning programs.

Each goal node is in a separate file and there is a graph.txt file encoding the planning program network.

To solve a network we do this:

pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 1234

	- pp-lpg is the lpg planner adapted for planning programs.

	- 1234 is the seed, it is needed


You will get different files of the form N0N1S1.soln with the solutions for
each node in the agent planning program.


In Logistics and PipesWorld, there are scripts to translate the plan prog 
into flat extended PDDL files encoding also the planning program. These are
then used with transltors pddl2nugat and pddl2tlv to get SMV files.

==== For the Trapper part ====

compiling: gcc main-trap.c -o pp-traps

update the paths in "def.h" accordingly (before compiling)

To run the tool:

pp-traps <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed> <planner_type>

To run the benchmarking script (in Benchmarks/ dir):

run-bench <benchmark_set> <runs> <planner_type>

where:

<benchmark_set> is a directory (without slash) where the benchmark set is stored, e.g. "Logistics-TrickyRing"
<runs> - how many times the trapper tool is run per each problem
<planner_type> - "trap" (trapper with Lm-cut); "lmcut" (Lm-cut without trapper); "lpg" (LPG without trapper)
