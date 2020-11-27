## PP-TRAPPER: Agent Planning Programs via Trap Reasoning

This is the PP-LPG solver for APP adapted to include dead-end (i.e., traps) reasoning:

* Lukás Chrpa, Nir Lipovetzky, Sebastian Sardiña: [Handling non-local dead-ends in Agent Planning Programs](https://www.ijcai.org/Proceedings/2017/135). IJCAI 2017: 971-978

To compile, get into `src/`, update the paths in `def.h` if needed, and then run:

```bash
gcc main-trap.c -o pp-traps
```

To run the tool, first set-it up:

* Tools `validate` and `trapper` need to be in the path. Both binaries are under `tools/`.
* Planner `lpg` must be in the path.
* In the problem to solve, there must be an empty file called `emptyplan.tmp` (its used is hard-coded in the solver). Just create one doing:  `touch emptyplan.tmp`.
  
Then run:

```bash
pp-traps <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed> <planner_type>
```

where `<planner_type>` could be:

* `trap`: trapper with LM-cut.
* `lmcut`: LM-cut without trapper.
* `lpg`: LPG without trapper

Other options (?): `no_trap`, `dfs_trap`, `dfs_no_trap`,

For the `example/` folder (and after compiling `pp-traps`):

```bash
../src/pp-traps obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg
```

To run the benchmarking script (in Benchmarks/ dir):

```bash
run-bench <benchmark_set> <runs> <planner_type>
```

where:

* `<benchmark_set>` is a directory (without slash) where the benchmark set is stored, e.g. "`Logistics-TrickyRing`".
* `<runs>` - how many times the trapper tool is run per each problem
* `<planner_type>` - "trap" (trapper with Lm-cut); "lmcut" (Lm-cut without trapper); "lpg" (LPG without trapper)
