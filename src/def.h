#ifndef __DEF__
#define __DEF__

#define MAX_FLAW 1000
#define MAX_NODE 105
#define MAX_CONN 100
#ifdef __NOPREF__
#define MAX_STATE 1000
#else
#define MAX_STATE 100
#endif
#define MAX_SOURCE 100
#define MAX_STR_LEN 300
#define MAX_MAX_STR_LEN 5000
#define MAX_NUM_RESTART 1
#define MAX_NUM_STEP 2000

#define TRUE 1
#define FALSE 0

#define RANDOM 0
#define BEST 1

#define MAX_STEPS 50

#define DEBUG0 (info_search == 0)
#define DEBUG1 (info_search > 0)
#define DEBUG2 (info_search > 1)
#define DEBUG3 (info_search > 2)

/**************** COMMAND LINES ****************/
#ifdef __SMALL__
#define COMMAND_LPG_1SOL "%s/lpg -f pfile.pddl -o domain.pddl -out soln.tmp -n 1 -seed %d -cputime 60 -nobestfirst -inst_with_contraddicting_objects -same_objects" // -inst_with_contraddicting_objects PER BARMAN

#define COMMAND_LPG_2SOL "%s/lpg -f pfile.pddl -o domain.pddl -n 2 -cputime 60 -extratime 1 -seed %d -wcost 20 -nobestfirst -inst_with_contraddicting_objects -same_objects" // -inst_with_contraddicting_objects PER BARMAN

#define COMMAND_LAMA_1SOL "/home/lpg/CODE/seq-sat-lama-2011/lama-quality -f pfile.pddl -o domain.pddl -n 1 -seed %d ; if [ -f soln ]; then cat soln | sed 's/ )/)/g' > soln.tmp ; fi"
#define COMMAND_LAMA_2SOL "/home/lpg/CODE/seq-sat-lama-2011/lama-quality -f pfile.pddl -o domain.pddl -n 2 -seed %d ; if [ -f soln ]; then cat soln | sed 's/ )/)/g' > soln.tmp; fi"

#define COMMAND_HPLANP_1SOL "/home/lpg/CODE/tlplan/run 1 $(pwd)"
#define COMMAND_HPLANP_2SOL "/home/lpg/CODE/tlplan/run 2 $(pwd)"

#define COMMAND_LPG_1SOL_REPLAN "%s/lpg -f pfile.pddl -o domain.pddl -n 1 -seed %d -cputime 60 -input_plan %s"
#define COMMAND_LPG_2SOL_REPLAN "%s/lpg -f pfile.pddl -o domain.pddl -n 2 -cputime 60 -extratime 1 -seed %d -wcost 20 -input_plan %s"

#define COMMAND_LMCUT "%s/trapper --domain domain.pddl --problem pfile.pddl --search astar_trap --plan soln.tmp"
#define COMMAND_DFS "%s/trapper --domain domain.pddl --problem pfile.pddl --search dfs+_trap --plan soln.tmp"

#define COMMAND_TRAPPER "%s/trapper --domain domain.pddl --problem pfile-trap.pddl --search astar_trap --candidates a2 --goals %i --plan soln.tmp"
#define COMMAND_NO_TRAPPER "%s/trapper --domain domain.pddl --problem pfile.pddl --search astar_trap --goals %i --plan soln.tmp"

#define COMMAND_DFS_TRAPPER "%s/trapper --domain domain.pddl --problem pfile-trap.pddl --search dfs+_trap --candidates a2 --goals %i --plan soln.tmp"
#define COMMAND_DFS_NO_TRAPPER "%s/trapper --domain domain.pddl --problem pfile.pddl --search dfs+_trap --goals %i --plan soln.tmp"

#define COMMAND_VAL_PLAN "%s/validate domain.pddl pfile.pddl soln.tmp"
#define COMMAND_VAL_EMPTYPLAN "%s/validate domain.pddl pfile.pddl emptyplan.tmp"

#else // PROOBLEMI DI GRANDI DIMENSIONI

#define COMMAND_LPG_1SOL "%s/lpg -f pfile.pddl -o domain.pddl -n 1 -seed %d -cputime 600 -numtry 1500 -lowmemory"
#define COMMAND_LPG_2SOL "%s/lpg -f pfile.pddl -o domain.pddl -n 2 -cputime 600 -extratime 2 -seed %d -wcost 20 -numtry 1500 -lowmemory"
#define COMMAND_LAMA_1SOL "/home/lpg/CODE/seq-sat-lama-2011/lama-quality-large -f pfile.pddl -o domain.pddl -n 1 -seed %d ; if [ -f soln ]; then cat soln | sed 's/ )/)/g' > soln.tmp ; fi"
#define COMMAND_LAMA_2SOL "/home/lpg/CODE/seq-sat-lama-2011/lama-quality-large -f pfile.pddl -o domain.pddl -n 2 -seed %d ; if [ -f soln ]; then cat soln | sed 's/ )/)/g' > soln.tmp; fi"
#define COMMAND_LPG_1SOL_REPLAN "%s/lpg -f pfile.pddl -o domain.pddl -n 1 -seed %d -cputime 600 -input_plan %s -numtry 1500 -lowmemory"
#define COMMAND_LPG_2SOL_REPLAN "%s/lpg -f pfile.pddl -o domain.pddl -n 2 -cputime 600 -extratime 2 -seed %d -wcost 20 -input_plan %s -numtry 1500 -lowmemory"
#endif

/*
#define COMMAND_RELAXED "/home/lukas/Planners/lpg -f pfile.pddl -o domainRelaxed.pddl -n 1 -seed 1234 -noise 0; mv soln pfile.pddl.soln"
*/
#define COMMAND_RELAXED "%s/ff -f pfile.pddl -o domainRelaxed.pddl"

#define COMMAND_LPG_INPUTSOL "%s/lpg -f pfile.pddl -o domain.pddl -n 1 -input_plan soln.tmp -seed %d -same_objects"
#define COMMAND_LPG_INPUTSOL_FROM_HPLANP "lpg -f pfile.pddl -o domainHPlanP.pddl -n 1 -input_plan soln.tmp -seed %d -same_objects"

/*********************************************/

typedef struct
{

  int num;
  char stateFilename[MAX_STR_LEN];
  int sourceState[MAX_SOURCE];
  int sourceNode[MAX_SOURCE];
  int numSource;
} State;

typedef struct
{

  int num;
  char stateFilename[MAX_STR_LEN];
} TabuState;

typedef struct
{

  int state;
  char PlanFilename[MAX_STR_LEN];

} Plan;

typedef struct
{

  int node;
  int state;

} Flaw, NodeState;

typedef struct
{

  int to_node;
  char goalFilename[MAX_STR_LEN];
  Plan P[MAX_STATE];
  int numP;
#ifdef TRAPS
  int numG;
#endif

} Edge;

/* 
  A node in the controller state: pair (num, domain state)
 */
typedef struct
{

  int num;  // no id of the node

  Edge E[MAX_CONN];
  int numE; // no of edges connected to node

  //  State S[MAX_STATE];
  State *S; // domain state of the node
  int numS;

  TabuState *T;
  int numT;

  int count;

#ifdef TRAPS
  char future_goals[MAX_CONN][MAX_STR_LEN];
  int futuregoalcount;
#endif
} Node;

#endif
