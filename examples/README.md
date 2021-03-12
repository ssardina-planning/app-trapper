# Examples

Run examples can be seen in `pp-online.out`  and `pp-lpg.out`.
## Simple

This is based on the `problem-1` of the Airport domain) for which the online LPG version works.

It is a very single linear problem `G0 -> G1 -> G2` that is easily solvable offline and online.

Let us first run the _online_ solver:

```bash
$ cd simple
$ ../../src/pp-online obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 123 lpg
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid


Failed plans:
 emptyplan.tmp 
Running trapper as follows: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/lpg -f pfile.pddl -o domain.pddl -out soln.tmp -n 1 -seed 1692901013 -cputime 60 -nobestfirst


NUMERIC_THREATS_MODE: 0

; Command line: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/lpg -f pfile.pddl -o domain.pddl -out soln.tmp -n 1 -seed 1692901013 -cputime 60 -nobestfirst   


Parsing domain file:  domain 'AIRPORT_FIXED_STRUCTURE' defined ... done.
Parsing problem file:  problem 'PROBLEM_X' defined ... done.



Modality: Incremental Planner

Number of actions             :     171
Number of conditional actions :       0
Number of facts               :     309


Analyzing Planning Problem:
	Temporal Planning Problem: NO
	Numeric Planning Problem: NO
	Problem with Timed Initial Literals: NO
	Problem with Derived Predicates: NO

Evaluation function weights:
     Action duration 0.00; Action cost 1.00


Computing mutex... done

Preprocessing total time: 0.02 seconds

Searching ('.' = every 50 search steps):
 solution found: 
 first_solution_cpu_time: 0.02 

Plan computed:
   Time: (ACTION) [action Duration; action Cost]
 0.0000: (PUSHBACK_SEG_B02_0_100_SEG_C5_C_B02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 0.0000: (MOVE_SEG_RWY_0_1300_SEG_27_0_150_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 1.0000: (PUSHBACK_SEG_C5_C_B02_0_100_SEG_C5_C6_0_50_SOUTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 1.0000: (MOVE_SEG_27_0_150_SEG_B_27_0_100_SOUTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 2.0000: (PUSHBACK_SEG_C5_C6_0_50_SEG_C6_C7_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 3.0000: (STARTUP_SEG_C6_C7_0_100_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 4.0000: (MOVE_SEG_C6_C7_0_100_SEG_C5_C6_0_50_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 5.0000: (MOVE_SEG_C5_C6_0_50_SEG_C4_C5_0_50_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 6.0000: (MOVE_SEG_C4_C5_0_50_SEG_C_C2_0_84_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 7.0000: (MOVE_SEG_C_C2_0_84_SEG_C_C2_2_0_83_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 8.0000: (MOVE_SEG_C_C2_2_0_83_SEG_C_C2_1_0_83_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 9.0000: (MOVE_SEG_C_C2_1_0_83_SEG_N_C_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 10.0000: (MOVE_SEG_N_C_0_100_SEG_N3_N_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 11.0000: (MOVE_SEG_N3_N_0_100_SEG_N2_N3_0_85_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 12.0000: (MOVE_SEG_N2_N3_0_85_SEG_N2_N3_6_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 13.0000: (MOVE_SEG_N2_N3_6_0_86_SEG_N2_N3_5_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 14.0000: (MOVE_SEG_N2_N3_5_0_86_SEG_N2_N3_4_0_85_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 15.0000: (MOVE_SEG_N2_N3_4_0_85_SEG_N2_N3_3_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 16.0000: (MOVE_SEG_N2_N3_3_0_86_SEG_N2_N3_2_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 17.0000: (MOVE_SEG_N2_N3_2_0_86_SEG_N2_N3_1_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 18.0000: (MOVE_SEG_N2_N3_1_0_86_SEG_N1_N2_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 19.0000: (MOVE_SEG_N1_N2_0_100_SEG_N1_A_0_100_NORTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 20.0000: (MOVE_SEG_N1_A_0_100_SEG_A_09_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 21.0000: (MOVE_SEG_A_09_0_100_SEG_09_0_150_SOUTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:1.00]
 22.0000: (TAKEOFF_SEG_09_0_150_SOUTH AIRPLANE_DFBOY) [D:1.00; C:1.00]


Solution number: 1
Total time:      0.02
Search time:     0.00
Actions:         25
Duration:        23.000
Plan quality:    25.000 
Total Num Flips: 29
     Plan file:       soln.tmp_1_1.SOL

Checking plan: soln.tmp
Plan executed successfully - checking goal
Plan valid
Final value: 25

Successful plans:
Value: 25
 soln.tmp 



NUMERIC_THREATS_MODE: 0

; Command line: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/lpg -f pfile.pddl -o domain.pddl -n 1 -input_plan soln.tmp -seed 1234 -same_objects   

...
...
Preprocessing total time: 0.01 seconds

Searching ('.' = every 50 search steps):
 solution found: 
 first_solution_cpu_time: 0.01 

Plan computed:
   Time: (ACTION) [action Duration; action Cost]
 0.0000: (MOVE_SEG_B_27_0_100_SEG_N6_B_0_100_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 1.0000: (MOVE_SEG_N6_B_0_100_SEG_N5_N6_0_100_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 2.0000: (MOVE_SEG_N5_N6_0_100_SEG_N4_N5_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 3.0000: (MOVE_SEG_N4_N5_0_86_SEG_N4_N5_6_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 4.0000: (MOVE_SEG_N4_N5_6_0_86_SEG_N4_N5_5_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 5.0000: (MOVE_SEG_N4_N5_5_0_86_SEG_N4_N5_4_0_85_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 6.0000: (MOVE_SEG_N4_N5_4_0_85_SEG_N4_N5_3_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 7.0000: (MOVE_SEG_N4_N5_3_0_86_SEG_N4_N5_2_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 8.0000: (MOVE_SEG_N4_N5_2_0_86_SEG_N4_N5_1_0_85_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 9.0000: (MOVE_SEG_N4_N5_1_0_85_SEG_N_N4_0_100_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 10.0000: (MOVE_SEG_N_N4_0_100_SEG_N_C_0_100_NORTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 11.0000: (MOVE_SEG_N_C_0_100_SEG_C_C2_1_0_83_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 12.0000: (MOVE_SEG_C_C2_1_0_83_SEG_C_C2_2_0_83_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 13.0000: (MOVE_SEG_C_C2_2_0_83_SEG_C_C2_0_84_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 14.0000: (MOVE_SEG_C_C2_0_84_SEG_C4_C5_0_50_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 15.0000: (MOVE_SEG_C4_C5_0_50_SEG_C5_C_A02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
 16.0000: (MOVE_SEG_C5_C_A02_0_100_SEG_A02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:1.00]
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


Analyzing Planning Problem:
	Temporal Planning Problem: NO
	Numeric Planning Problem: YES
	Problem with Timed Initial Literals: NO
	Problem with Derived Predicates: NO

Evaluation function weights:
     Action duration 0.00; Action cost 1.00


Computing mutex... done

Preprocessing total time: 0.01 seconds

Searching ('.' = every 50 search steps):
 solution found: 
 first_solution_cpu_time: 0.01 

Plan computed:
   Time: (ACTION) [action Duration; action Cost]
 0.0000: (PREF-OP0) [D:1.00; C:0.10]
 0.0000: (PUSHBACK_SEG_B02_0_100_SEG_C5_C_B02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 0.0000: (MOVE_SEG_RWY_0_1300_SEG_27_0_150_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 1.0000: (PUSHBACK_SEG_C5_C_B02_0_100_SEG_C5_C6_0_50_SOUTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 1.0000: (MOVE_SEG_27_0_150_SEG_B_27_0_100_SOUTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 2.0000: (STARTUP_SEG_C5_C6_0_50_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 3.0000: (MOVE_SEG_C5_C6_0_50_SEG_C4_C5_0_50_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 4.0000: (MOVE_SEG_C4_C5_0_50_SEG_C_C2_0_84_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 5.0000: (MOVE_SEG_C_C2_0_84_SEG_C_C2_2_0_83_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 6.0000: (MOVE_SEG_C_C2_2_0_83_SEG_C_C2_1_0_83_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 7.0000: (MOVE_SEG_C_C2_1_0_83_SEG_N_C_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 8.0000: (MOVE_SEG_N_C_0_100_SEG_N3_N_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 9.0000: (MOVE_SEG_N3_N_0_100_SEG_N2_N3_0_85_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 10.0000: (MOVE_SEG_N2_N3_0_85_SEG_N2_N3_6_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 11.0000: (MOVE_SEG_N2_N3_6_0_86_SEG_N2_N3_5_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 12.0000: (MOVE_SEG_N2_N3_5_0_86_SEG_N2_N3_4_0_85_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 13.0000: (MOVE_SEG_N2_N3_4_0_85_SEG_N2_N3_3_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 14.0000: (MOVE_SEG_N2_N3_3_0_86_SEG_N2_N3_2_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 15.0000: (MOVE_SEG_N2_N3_2_0_86_SEG_N2_N3_1_0_86_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 16.0000: (MOVE_SEG_N2_N3_1_0_86_SEG_N1_N2_0_100_NORTH_NORTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 17.0000: (MOVE_SEG_N1_N2_0_100_SEG_N1_A_0_100_NORTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 18.0000: (MOVE_SEG_N1_A_0_100_SEG_A_09_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 19.0000: (MOVE_SEG_A_09_0_100_SEG_09_0_150_SOUTH_SOUTH_MEDIUM AIRPLANE_DFBOY) [D:1.00; C:0.10]
 20.0000: (TAKEOFF_SEG_09_0_150_SOUTH AIRPLANE_DFBOY) [D:1.00; C:0.10]



METRIC_VALUE = 0.00
Solution number: 1
Total time:      0.01
Search time:     0.00
Actions:         24
Duration:        21.000
Plan quality:    -0.000 
Total Num Flips: 33
     Plan file:       soln.tmp_1_1.SOL

Adding state 0 to node 1

Insert Flaw: State 0 of Node 1

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
## NODE: 2 
# List of States:
# List of Plans:



List of flaw:
NODE: 1 STATE 0


******* STEP: 1 Processing from node 1 and state 0*******



Planning for edge <1,2> with goal G1
Trying empty plan..
Checking plan: emptyplan.tmp
Plan executed successfully - checking goal
Goal not satisfied
Plan invalid


Failed plans:
 emptyplan.tmp 


NUMERIC_THREATS_MODE: 0

; Command line: /home/ssardina/git/soft/planning/app/app-trapper.git/tools/lpg -f pfile.pddl -o domain.pddl -out soln.tmp -n 1 -seed 126 -cputime 60 -nobestfirst -inst_with_contraddicting_objects   


Parsing domain file:  domain 'AIRPORT_FIXED_STRUCTURE' defined ... done.
Parsing problem file:  problem 'PROBLEM_X' defined ... done.



Modality: Incremental Planner

Number of actions             :      52
Number of conditional actions :       0
Number of facts               :     191


Analyzing Planning Problem:
	Temporal Planning Problem: NO
	Numeric Planning Problem: YES
	Problem with Timed Initial Literals: NO
	Problem with Derived Predicates: NO

Evaluation function weights:
     Action duration 0.00; Action cost 1.00


Computing mutex... done

Preprocessing total time: 0.00 seconds

Searching ('.' = every 50 search steps):
. solution found: 
 first_solution_cpu_time: 0.01 

Plan computed:
   Time: (ACTION) [action Duration; action Cost]
 0.0000: (PREF-OP0) [D:1.00; C:0.10]
 0.0000: (MOVE_SEG_B_27_0_100_SEG_N6_B_0_100_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 1.0000: (MOVE_SEG_N6_B_0_100_SEG_N5_N6_0_100_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 2.0000: (MOVE_SEG_N5_N6_0_100_SEG_N4_N5_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 3.0000: (MOVE_SEG_N4_N5_0_86_SEG_N4_N5_6_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 4.0000: (MOVE_SEG_N4_N5_6_0_86_SEG_N4_N5_5_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 5.0000: (MOVE_SEG_N4_N5_5_0_86_SEG_N4_N5_4_0_85_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 6.0000: (MOVE_SEG_N4_N5_4_0_85_SEG_N4_N5_3_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 7.0000: (MOVE_SEG_N4_N5_3_0_86_SEG_N4_N5_2_0_86_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 8.0000: (MOVE_SEG_N4_N5_2_0_86_SEG_N4_N5_1_0_85_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 9.0000: (MOVE_SEG_N4_N5_1_0_85_SEG_N_N4_0_100_NORTH_NORTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 10.0000: (MOVE_SEG_N_N4_0_100_SEG_N_C_0_100_NORTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 11.0000: (MOVE_SEG_N_C_0_100_SEG_C_C2_1_0_83_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 12.0000: (MOVE_SEG_C_C2_1_0_83_SEG_C_C2_2_0_83_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 13.0000: (MOVE_SEG_C_C2_2_0_83_SEG_C_C2_0_84_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 14.0000: (MOVE_SEG_C_C2_0_84_SEG_C4_C5_0_50_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 15.0000: (MOVE_SEG_C4_C5_0_50_SEG_C5_C_A02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 16.0000: (MOVE_SEG_C5_C_A02_0_100_SEG_A02_0_100_SOUTH_SOUTH_MEDIUM AIRPLANE_CFBEG) [D:1.00; C:0.10]
 17.0000: (PARK_SEG_A02_0_100_SOUTH AIRPLANE_CFBEG) [D:1.00; C:0.10]



METRIC_VALUE = 0.00
Solution number: 1
Total time:      0.01
Search time:     0.01
Actions:         19
Duration:        18.000
Plan quality:    -0.000 
Total Num Flips: 67
     Plan file:       soln.tmp_1_1.SOL

Adding state 0 to node 2

Insert Flaw: State 0 of Node 2

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
NODE: 2 STATE 0


******* STEP: 2 Processing from node 2 and state 0*******



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

This is one of the Woodworking examples, where the offline versions and the online versions _with traps_ work, but the online ones without traps do not.

