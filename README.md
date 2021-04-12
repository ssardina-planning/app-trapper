## PP-TRAPPER: Agent Planning Programs via Trap Reasoning

This is the PP-LPG solver for APP adapted to include dead-end (i.e., traps) reasoning:

* Lukás Chrpa, Nir Lipovetzky, Sebastian Sardiña: [Handling non-local dead-ends in Agent Planning Programs](https://www.ijcai.org/Proceedings/2017/135). IJCAI 2017: 971-978

## Pre-requisites

Before running the solvers, make sure that:

1. The following binary tools are available in `tools/`:
   * `validate` binary, from the [VAL](https://github.com/KCL-Planning/VAL) project.
   * `trapper` binary form the [trapper-lapkt repo](https://github.com/nirlipo/trapper-lapkt), presented at ICAPS16 paper [_Traps, Invariants, and Dead-Ends_](https://www.aaai.org/ocs/index.php/ICAPS/ICAPS16/paper/view/13190). 
   * `lpg` preference-based planner binary. This is a modified version of the original [LPG]((https://lpg.unibs.it/)) planner that leaves the final state of the solution plan in file `endstate.txt` and the solution plan is always written a file called `soln` (instead of using the domain name and `.SOL` extension).
1. In any problem to solve, there must be a dummy empty file called `emptyplan.tmp` (its used is hard-coded in the solver).
   * Just create one doing:  `touch emptyplan.tmp`.
## Online solver

To compile the online solver, get into `src/`, update the paths in `def.h` if needed, and then run:

```bash
$ cd src/
$ make online
```

This will build the `pp-online` online solver and the various `pp-<solver>` offline solvers.

To run the **_online_** solvers, get into the problem folder and run:

```shell
$ /path/to/src/pp-online <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed> <planner_type>
```

where `<planner_type>` could be one of the following:

* `lmcut_trap`: uses trapper with LM-cut.
* `lmcut_no_trap`: uses LM-cut without trapper.
* `dfs_trap`: uses trapper with DFS+.
* `dfs_no_trap`: uses DFS+ without trapper.
* `lpg`: uses LPG without trapper

When using trap reasoning, the tool used to extract dead-ends/traps is `trapper`, available in the [trapper-lapkt repo](https://github.com/nirlipo/trapper-lapkt).

Running trapper as follows: 

```shell
$ tools/trapper --domain domain.pddl --problem pfile-trap.pddl --search dfs+_trap --candidates a2 --goals 1 --plan soln.tmp
```

For example, this will run the online solver using on the complex example using the LPG planner with no traps (which will fail) and the DFS+ planner _with trap reasoning_ (which will succeed):

```shell
$ cd examples/complex

$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg

$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 dsf_trap
```

## Offline solvers

To compile the offline solver, get into `src/`, update the paths in `def.h` if needed, and then run:

```bash
$ cd src/
$ make offline
```

This will build the varios `pp-<solver>` offline solvers:

* `pp-lpg`: uses preference-based LPG without trapper. This is basically the original APP solver from the AIJ16 paper. Not integrated with trapper or LAPKT; so no reasoning on traps.
* `pp-dfs_no_trap`: uses DFS+ from LAPKT but without trapper.
* `pp-dfs_trap`: uses trapper with DFS+ from LAPKT.
* `pp-lmcut_no_trap`: uses LM-cut from LAPKT but without trapper.
* `pp-lmcut_trap`: uses trapper with LM-cut from LAPKT.

**NOTE:** when a local planning step is performed to "close" the policy, LPG is used, as it is a preference-based planner. However, LPG is not integrated with trapper, so those planning episodes do not use any dead-end reasoning. So, in all the above cases, LPG is used in some transitions.

To run the **_offline_** solvers, get into the problem folder and run:

```bash
$ cd /path/to/problem
$ /path/to/src/pp-<planner_type> <obj_file> <init_file> <predicate_file> <action_file> <graph_file> <seed>
```

For example, to run the LPG offline solver (as per AIJ16) on the complex example:

```bash
$ cd examples/complex
$ ../../src/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123
```
