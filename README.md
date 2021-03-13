## PP-TRAPPER: Agent Planning Programs via Trap Reasoning

This is the PP-LPG solver for APP adapted to include dead-end (i.e., traps) reasoning:

* Lukás Chrpa, Nir Lipovetzky, Sebastian Sardiña: [Handling non-local dead-ends in Agent Planning Programs](https://www.ijcai.org/Proceedings/2017/135). IJCAI 2017: 971-978

To compile, get into `src/`, update the paths in `def.h` if needed, and then run:

```bash
$ cd src/
$ make online
$ make offline
```

to buid the `pp-online` online solver and the various `pp-<solver>` offline versions.

Before running the solvers, first set it up as follows:

1. Tools `validate` and `trapper` need to be in `tools/`.
2. Planner `lpg` must be in `tools/`.
3. In the problem to solve, there must be an empty file called `emptyplan.tmp` (its used is hard-coded in the solver).
     * Just create one doing:  `touch emptyplan.tmp`.
  
Then, to run the **_online_** solvers:

```bash
$ cd /path/to/problem
$ /path/to/src/pp-online <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed> <planner_type>
```

where `<planner_type>` could be one of the following ones:

* `lmcut_trap`: uses trapper with LM-cut.
* `lmcut_no_trap`: uses LM-cut without trapper.
* `dfs_trap`: uses trapper with DFS+.
* `dfs_no_trap`: uses DFS+ without trapper.
* `lpg`: uses LPG without trapper

For example, this will run the online solver using on the complex example using the LPG planner with no traps (which will fail) and the DFS+ planner with trap reasoning (which will succeed):

```bash
$ cd examples/complex

$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg

$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 dsf_trap
```

To run the **_offline_** solvers:

```bash
$ cd /path/to/problem
$ /path/to/src/pp-<planner_type> <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed>
```

For example, to run the LPG offline solver (as per AIJ16) on the complex example:

```bash
$ cd examples/complex
$ ../../src/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123
```