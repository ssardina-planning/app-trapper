# Examples

Run examples can be seen in `pp-online.out`  and `pp-lpg.out`.

All examples need an `emptyplan.tmp` file that can be created via:

```bash
$ touch emptyplan.tmp
```

## Simple

This is based on the `problem-1` of the Airport domain) for which the online LPG version works.

It is a very single linear problem `G0 -> G1 -> G2` that is easily solvable offline and online.

Let us first run the _online_ solver using the LPG planner:

```bash
$ cd simple
$ touch emptyplan.tmp
$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid


Failed plans:
 emptyplan.tmp 
Running trapper as follows: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/lpg -f pfile.pddl -o domain.pddl -out soln.tmp -n 1 -seed 1692901013 -cputime 60 -nobestfirst

...
(MOVE_SEG_C5_C_A02_0_100_SEG_A02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 17.0000: (PARK_SEG_A02_0_100_SOUTH AIRPLANE_CFBEG) [D:1.00; C:1.00]


Solution number: 1
Total time:      0.01
Search time:     0.00
Actions:         18
Duration:        18.000
Plan quality:    18.000 
Total Num Flips: 1
Distance from input plan: 0 
     Plan file:       plan_pfile.pddl_1.SOL


SUCCESS
```

Of course, if the online solver solves the task, the _offline_ solver will do it too:

```bash
$ cd complex
$ touch emptyplan.tmp
$ ../../src/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 
Trying empty plan..
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Plan valid
Final value: 0

Successful plans:
Value: 0
 emptyplan.tmp 



PP:RESTART 0

******* STEP: 0 Processing from node 0 and state 0*******



Planning for edge <0,1> with goal G0
Trying empty plan..
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid


Failed plans:
 emptyplan.tmp 


NUMERIC_THREATS_MODE: 0

; Command line: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/lpg -f pfile.pddl -o domain.pddl -out soln.tmp -n 1 -seed 125 -cputime 60 -nobestfirst -inst_with_contraddicting_objects   


Parsing domain file:  domain 'AIRPORT_FIXED_STRUCTURE' defined ... done.
Parsing problem file:  problem 'PROBLEM_X' defined ... done.



Modality: Incremental Planner

Number of actions             :     172
Number of conditional actions :       0
Number of facts               :     311

####### CURRENT GRAPH #######
## NODE: 0 
# List of States:
  State 0, N0S0 [derived from node -1 and state -1]
# List of Plans:
  Plan N0N1S0.soln for state 0
## NODE: 1 
# List of States:
  State 0, N1S0 [derived from node 0 and state 0]
# List of Plans:
  Plan N1N2S0.soln for state 0
## NODE: 2 
# List of States:
  State 0, N2S0 [derived from node 1 and state 0]
# List of Plans:



List of flaw:
SUCCESS
```

## Complex

This is one of the Woodworking examples. It is quite complex with many goals and branches, but it is still finite and with no loops, so that any successful run is meant to terminate.

The offline versions solve the problem, whereas the online versions solve it only when doing dead-end/trap reasoning. This shows the power of traps when executing an APP online.

Here is a run of the _offline_ solver:


```bash
$ cd complex
$ touch emptyplan.tmp
$ ../../src/pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid

...
  State 25, N16S25 [derived from node 13 and state 9]
  State 26, N16S26 [derived from node 14 and state 28]
# List of Plans:



List of flaw:
SUCCESS
```

When we run the _online_ version with the LPG planner and no traps, the system fails:

```bash
$ cd complex
$ touch emptyplan.tmp
$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid

...

LPG: create_final_goal_state(): goal can be simplified to FALSE.
    No plan will solve it

Checking plan: soln.tmp
Bad plan file!


Failed plans:
 soln.tmp 

FAIL
```

Similarly if we use DFS+ without traps, it fails at some point:

```bash
$ cd complex
$ touch emptyplan.tmp
$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 dfs_no_traps

Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid


Failed plans:
 emptyplan.tmp 
Running trapper as follows: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/validate domain.pddl pfile.pddl emptyplan.tmp
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid

...

Failed plans:
 emptyplan.tmp 
Running trapper as follows: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/trapper --domain domain.pddl --problem pfile.pddl --search dfs+_trap --goals 1 --plan soln.tmp

ff: goal can be simplified to FALSE. No plan will solve it

Checking plan: soln.tmp
Bad plan file!


Failed plans:
 soln.tmp 

FAIL
```

Interestingly, however, if we run the online DFS+ _with traps_, then the system succeeds in running the APP to completion (as it avoids dead-ends):

```bash
$ cd complex
$ touch emptyplan.tmp
$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 dfs_traps

....

Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Plan valid
Final value: 0

Successful plans:
Value: 0
 emptyplan.tmp 


SUCCESS
```

