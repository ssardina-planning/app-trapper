## PP-TRAPPER: Agent Planning Programs via Trap Reasoning

This is the PP-LPG solver for APP adapted to include dead-end (i.e., traps) reasoning:

* Lukás Chrpa, Nir Lipovetzky, Sebastian Sardiña: [Handling non-local dead-ends in Agent Planning Programs](https://www.ijcai.org/Proceedings/2017/135). IJCAI 2017: 971-978

To compile, get into `src/`, update the paths in `def.h` if needed, and then run:

```bash
make online
```

or 

```bash
make offline
```

for the online or offline version of the tool, respectively.

To run the tool, first set-it up:

* Tools `validate` and `trapper` need to be in `tools/`.
* Planner `lpg` must be need to be in `tools/` as well.
* In the problem to solve, there must be an empty file called `emptyplan.tmp` (its used is hard-coded in the solver). Just create one doing:  `touch emptyplan.tmp`.
  
Then run:

```bash
pp-online <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed> <planner_type>
```

or

```bash
pp-<planner_type> <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed> 
```

where `<planner_type>` could be:

* `lmcut_trap`: trapper with LM-cut.
* `lmcut_no_trap`: LM-cut without trapper.
* `dfs_trap`: trapper with DFS+.
* `dfs_no_trap`: DFS+ without trapper.
* `lpg`: LPG without trapper


For the `example/` folder (and after compiling `pp-` binaries):

```bash
../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg
```
or

```bash
../src/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 
```


To run the benchmarking script (in Benchmarks/ dir):

```bash
run-bench-online <benchmark_set> <runs> <planner_type>
```

or

```bash
run-bench-offine <benchmark_set> <runs> <planner_type>
```


where:

* `<benchmark_set>` is a directory (without slash) where the benchmark set is stored, e.g. "`Logistics-TrickyRing`".
* `<runs>` - how many times the trapper tool is run per each problem
* `<planner_type>` - as specified above
