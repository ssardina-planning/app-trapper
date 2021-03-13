# Examples

Run examples can be seen in `pp-online.out`  and `pp-lpg.out`.

All examples need an `emptyplan.tmp` file that can be created via:

```bash
$ touch emptyplan.tmp
```

Run logs for every possible solver can be found in the example folders, under file names `pp-<planner>.out` (offline) and `pp-online-<planner>.out` (online).

For example, to run the LPG offline solver (as per AIJ16):

```bash
$ cd examples/<simple/complex>
$ touch emptyplan.tmp
$ ../../src/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 
```

To run the online solver, say with DFS+ with traps:

```bash
$ cd examples/complex
$ touch emptyplan.tmp
$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 dfs_traps
```

## Simple Example

This is based on the `problem-1` of the Airport domain) for which the online LPG version works.

It is a very single linear problem `G0 -> G1 -> G2` that is easily solvable offline and online.

Every solver, offline and online solves the problem.

Please refer to the `*.out` log files in the example folder for details.
## Complex Example

This is one of the Woodworking examples. It is quite complex with 23 sequential goals, but it is still finite and with no loops, so that any successful run is meant to terminate.

As the problem is indeed solvable, the _offline solvers_ find solutions, except for DFS+ _without traps_, as it keeps trying until LPG fails due to too many operators (in principle, if we compiled an LPG version that allowed operators, DFS+ will keep searching until finding a solution). Note that when traps are used in the DFS+ offline solver, a solution is found, as the search is less erratic.

On the other hand, the _online solvers_ without traps all fail (DFS+, LMCUT, or LPG), as there are choices that will lead to no plan for a step. However, when trap reasoning is used, the online solvers DFS+ and LMCUT do solve the problem. This shows the power of traps when executing an APP online.

Please refer to the `*.out` log files in the example folder for details.