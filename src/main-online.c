// pp obj.pddl init.pddl acts.pddl graph.txt

#define TRAPS
#define __LPG__ 666
#define __SMALL__ 111

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <signal.h>

#include "def.h"
#include <sys/stat.h>

Node NodeVect[MAX_NODE];
Flaw FlawVect[MAX_FLAW];

int numNode;
int numFlaw;
int info_search = 2;
int pref_flag;
int seed;
int tot_num_step;
int selectPlanToAdapt = BEST;
//int selectPlanToAdapt = RANDOM;

void print_graph();
void print_flaws();

int file_exists(const char *filename)
{

  struct stat info;
  int ret = -1;

  ret = stat(filename, &info);
  if (ret == 0)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

void insert_flaw(int node, int state)
{

  int i;

  if (numFlaw >= MAX_FLAW)
  {
    printf("\nFlawVect is full: Please recompile with a higher value than constant MAX-FLAW\n");
    fflush(stdout);
    exit(1);
  }

  for (i = 0; i < numFlaw; i++)
  {
    if (FlawVect[i].node == node && FlawVect[i].state == state)
      break;
  }
  if (i == numFlaw)
  {

    FlawVect[numFlaw].node = node;
    FlawVect[numFlaw].state = state;
    if (DEBUG2)
    {
      printf("\nInsert Flaw: State %d of Node %d", state, node);
      fflush(stdout);
    }
    numFlaw++;
  }
  else
  {
    if (DEBUG2)
    {
      printf("\nFlaw <State %d of Node %d> already in the flaw-list", state, node);
      fflush(stdout);
    }
  }
}

void remove_constraints(char *origFilename, char *destFilename)
{
  FILE *in = fopen(origFilename, "r");
  FILE *out = fopen(destFilename, "w");
  char str[MAX_MAX_STR_LEN];
  int i;

  if (in == NULL)
  {
    printf("File %s cannot be opened!\n", origFilename);
    exit(1);
  }

  if (out == NULL)
  {
    printf("File %s cannot be opened!\n", destFilename);
    exit(1);
  }

  while (feof(in) == 0)
  {
    if (fgets(str, MAX_MAX_STR_LEN, in) != NULL)
    {
      if (strstr(str, "(or ") == NULL)
      {
        if (strstr(str, ":constraints") == NULL)
          fprintf(out, "%s", str);
        else
        {
          //	      fprintf(out, "AAA\n)");
          break;
        }
      }
    }
  }
  fprintf(out, "\n)");

  fclose(in);
  fclose(out);
}

void create_problem_file(Node *n, char *objFilename, char *initFilename, char *goalFilename)
{

  FILE *tmp, *fp = fopen(objFilename, "r");
  FILE *out = fopen("pfile.pddl", "w");
  FILE *out_trap = fopen("pfile-trap.pddl", "w");
  char str[MAX_STR_LEN];
  int i, j;

  if (fp == NULL)
  {
    printf("File %s cannot be opened!\n", objFilename);
    exit(1);
  }
  if (out == NULL || out_trap == NULL)
  {
    printf("File pfile.pddl cannot be opened!\n");
    exit(1);
  }

  while (feof(fp) == 0)
  {
    if (fgets(str, MAX_STR_LEN, fp) != NULL)
    {
      fprintf(out, "%s", str);
      fprintf(out_trap, "%s", str);
    }
  }

  fclose(fp);

#ifdef __LAMA__
  fprintf(out, "(:INIT (= (total-cost) 0)\n\t(dummy-fact)\n");
#elif __LPG__
  fprintf(out, "(:INIT \n");
#endif
  fprintf(out_trap, "(:init \n");

  fp = fopen(initFilename, "r");

  if (fp == NULL)
  {
    printf("111File %s cannot be opened!\n", initFilename);
    exit(1);
  }

  while (feof(fp) == 0)
  {
    if (fgets(str, MAX_STR_LEN, fp) != NULL)
    {
      fprintf(out, "%s", str);
      fprintf(out_trap, "%s", str);
    }
  }

  /* ALEX: STAMPARE ANCHE IL FILE DEGLI INVARIANTI */

  fprintf(out, ")\n");
  fprintf(out_trap, ")\n");

  fclose(fp);

  if (goalFilename == NULL)
  {
#ifdef __LAMA__
    fprintf(out, "(:goal (and (dummy-goal)))\n");
    fprintf(out, "(:metric minimize (total-cost))\n)");
#elif __LPG__
    fprintf(out, "(:goal (and )))\n");
    //fprintf(out, "(:metric minimize (cost))\n)");
#endif
    fprintf(out_trap, "(:goal (and ))\n)\n");
  }
#ifndef __HPLANP__
  else
  {
    fp = fopen(goalFilename, "r");

    if (fp == NULL)
    {
      printf("222File %s cannot be opened!\n", goalFilename);
      exit(1);
    }

    // Now we generate all the goals per goal node
    fprintf(out_trap, "(:goal (and \n");
    if (n != NULL)
    {
      //the trap part
      FILE *fpt;
      for (i = n->futuregoalcount - 1; i >= 0; i--)
      {
        fpt = fopen(n->future_goals[i], "r");

        if (fpt == NULL)
        {
          printf("233File %s cannot be opened!\n", n->future_goals[i]);
          exit(1);
        }
        fprintf(out_trap, ";goal %s\n", n->future_goals[i]);
        while (feof(fpt) == 0)
        {
          if (fgets(str, MAX_STR_LEN, fpt) != NULL)
          {
            fprintf(out_trap, "%s", str);
          }
        }

        fclose(fpt);
      }
    }

    fprintf(out, "(:goal (and\n");
    fprintf(out_trap, ";real goals\n");

    while (feof(fp) == 0)
    {
      if (fgets(str, MAX_STR_LEN, fp) != NULL)
      {
        fprintf(out, "%s", str);
        fprintf(out_trap, "%s", str);
      }
    }

    fclose(fp);

/*
    if (n != NULL) {
	for (i = 0; i < n->numT; i++) {
	    fprintf(out, "(dummy-tabustate%d)\n", i);
            fprintf(out_trap, "(dummy-tabustate%d)\n", i);
	}

    }
*/
#ifdef __LAMA__
    fprintf(out, "))\n(:metric minimize (total-cost))\n)\n");
#elif __LPG__
    fprintf(out, "))\n)\n");
#endif
    //fprintf(out_trap, "))\n(:metric minimize (total-cost))\n)\n");
    fprintf(out_trap, ")))\n");
  }
#else
  else
  {
    fp = fopen(goalFilename, "r");

    if (fp == NULL)
    {
      printf("222File %s cannot be opened!\n", goalFilename);
      exit(1);
    }

    fprintf(out, "(:goal (and\n(dummy-fact)\n");

    while (feof(fp) == 0)
    {
      if (fgets(str, MAX_STR_LEN, fp) != NULL)
        fprintf(out, "%s", str);
    }

    fclose(fp);

    if (n != NULL)
    {

      for (i = 0; i < n->numT; i++)
      {

        fprintf(out, "(or ");

        tmp = fopen(n->T[i].stateFilename, "r");

        while (feof(tmp) == 0)
        {
          if (fgets(str, MAX_STR_LEN, tmp) != NULL)
          {
            str[strlen(str) - 1] = '\0';
            fprintf(out, "(not %s) ", str);
          }
        }

        fclose(tmp);

        fprintf(out, ")\n");
      }
    }

    fprintf(out, "))\n");

#ifndef __NOPREF__
    if (n->numS > 0)
    {
      int counter, idx_for_metric[MAX_STATE] = {0};

      fprintf(out, "(:constraints (and\n");

      for (i = 0; i < n->numS; i++)
      {
        counter = 0;
        tmp = fopen(n->S[i].stateFilename, "r");

        while (feof(tmp) == 0)
        {

          if (fgets(str, MAX_STR_LEN, tmp) != NULL)
          {
            if (counter % 5 == 0)
            {
              fprintf(out, "(preference s%d-%d (at end (and (dummy-fact) \n", i, idx_for_metric[i]);
              idx_for_metric[i]++;
            }
            fprintf(out, "%s", str);
            counter++;

            if (counter % 5 == 0)
              fprintf(out, ")\n))\n");
          }
          else if (counter % 5 != 0)
            fprintf(out, ")\n))\n");
        }
        fclose(tmp);
      }
      fprintf(out, "))\n(:metric minimize (+ ");

      for (i = 0; i < n->numS; i++)
      {
        fprintf(out, "(- 1 (* 1 ");
        for (j = 0; j < idx_for_metric[i]; j++)
        {
          fprintf(out, "(- 1 (is-violated s%d-%d)) ", i, j);
        }
        fprintf(out, "))");
      }
      fprintf(out, "))");
    }
    else
#endif
    {
      fprintf(out, "(:constraints (and\n(preference sd (at end (dummy-fact)))\n))\n(:metric minimize (is-violated sd))");
    }

    fprintf(out, "\n)");
  }
#endif
  fclose(out);
  fclose(out_trap);
}

void create_domain_file(Node *n, char *predicatesFilename, char *actsFilename)
{

  int i, j = 1, k;
  FILE *tmp, *fp = fopen(predicatesFilename, "r");
  FILE *out = fopen("domain.pddl", "w");
  char str[MAX_STR_LEN];

  /* Copio i predicati aggiungendo quelli per la TABU */

  if (fp == NULL)
  {
    printf("File %s does not exist!\n", predicatesFilename);
    exit(1);
  }

  while (feof(fp) == 0)
  {
    if (fgets(str, MAX_STR_LEN, fp) != NULL)
      fprintf(out, "%s", str);
  }

  if (n != NULL)
  {
    for (i = 0; i < n->numT; i++)
    {
      fprintf(out, "(dummy-tabustate%d)", i);
    }
  }
  fprintf(out, ")\n");

  fclose(fp);

  /* Copio gli operatori aggiungendo quelli per le preferenze e per la tabu */

  fp = fopen(actsFilename, "r");

  if (fp == NULL)
  {
    printf("File %s does not exist!\n", actsFilename);
    exit(1);
  }

  while (feof(fp) == 0)
  {
    if (fgets(str, MAX_STR_LEN, fp) != NULL)
      fprintf(out, "%s", str);
  }

  if (n != NULL)
  {
    /*
    fprintf(out, "(:action pref-op0\n");
    fprintf(out,":precondition (and (dummy-fact))\n");
    fprintf(out,":effect (and (not (dummy-fact)) (dummy-goal)))\n\n");
    */

    for (i = 0; i < n->numS; i++)
    {
      fprintf(out, "(:action pref-op%d\n", j);
      j++;
      fprintf(out, ":precondition (and (dummy-fact)\n");

      tmp = fopen(n->S[i].stateFilename, "r");

      while (feof(tmp) == 0)
      {
        if (fgets(str, MAX_STR_LEN, tmp) != NULL)
          fprintf(out, "%s", str);
      }

      fclose(tmp);

      fprintf(out, ")\n"); // the j is not used at all, no place in formatted string
#ifdef __LAMA__
      fprintf(out, ":effect (and (not (dummy-fact)) (dummy-goal)))\n\n");
#elif __LPG__
      fprintf(out, ":effect (and (not (dummy-fact)) (dummy-goal) (increase (cost) 100)))\n\n");
#endif
    }

#ifdef __SIMPLEADL__
    for (i = 0; i < n->numT; i++)
    {
      fprintf(out, "(:action tabu-op%d\n", i);
      fprintf(out, ":precondition (and (not (dummy-fact)) (or\n");

      tmp = fopen(n->T[i].stateFilename, "r");

      while (feof(tmp) == 0)
      {
        if (fgets(str, MAX_STR_LEN, tmp) != NULL)
        {
          str[strlen(str) - 1] = '\0';
          fprintf(out, "(not %s) ", str);
        }
      }

      fclose(tmp);

      fprintf(out, "))\n");
      fprintf(out, ":effect (and (dummy-tabustate%d)))\n\n", i);
    }
#else
    for (i = 0; i < n->numT; i++)
    {

      j = 0;
      tmp = fopen(n->T[i].stateFilename, "r");

      while (feof(tmp) == 0)
      {
        if (fgets(str, MAX_STR_LEN, tmp) != NULL)
        {
          str[strlen(str) - 1] = '\0';
          j++;
          fprintf(out, "(:action tabu-op%d-%d\n", i, j);
          fprintf(out, ":precondition (and (not (dummy-fact)) (not %s))\n", str);
          fprintf(out, ":effect (and (dummy-tabustate%d)))\n\n", i);
        }
      }

      fclose(tmp);
    }
#endif
  }
  fprintf(out, ")\n");
  fclose(fp);
  fclose(out);
}

/* 
  Runs the planner

  pref = whether preferences will be used or not
  inputplan = the input of the plan when replanning in LPG
 */
void run_planner(int pref, char inputplan[])
{

  char tmp[MAX_STR_LEN];

  seed++;

  /*
  static int x = 0;
  x++;
  if (x == 4) return; // TESTING FAILURE
*/

  if (pref == FALSE)
  {
#ifdef __LAMA__
    snprintf(tmp, MAX_STR_LEN, COMMAND_LAMA_1SOL, seed);
    system(tmp);
    if (file_exists("soln.tmp") == TRUE)
    { /* Per creazione endstate.txt */
      snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_INPUTSOL, seed);
      system(tmp);
      remove("soln.tmp");
    }
#elif __LPG__
    if (inputplan == NULL)
      snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_1SOL, __TOOLDIR__, seed);
    else
      snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_1SOL_REPLAN, __TOOLDIR__, seed, inputplan);
    system(tmp);
#endif
  }
  else
  {
#ifdef __LAMA__
    snprintf(tmp, MAX_STR_LEN, COMMAND_LAMA_2SOL, seed);
    system(tmp);
    if (file_exists("soln.tmp") == TRUE)
    { /* Per creazione endstate.txt */
      snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_INPUTSOL, seed);
      system(tmp);
      remove("soln.tmp");
    }
#elif __LPG__
    if (inputplan == NULL)
      snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_2SOL, __TOOLDIR__, seed);
    else
      snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_2SOL_REPLAN, __TOOLDIR__, seed, inputplan);
    system(tmp);
#endif
  }

  fflush(stdout);
}

int modifyANDrename(char *filename1, char *filename2)
{

  FILE *fp1, *fp2;
  char tmp[MAX_STR_LEN], str[MAX_STR_LEN];

  /* open first file */
  if ((fp1 = fopen(filename1, "r")) == NULL)
  {
    printf("Cannot open first file %s.\n", filename1);
    exit(1);
  }

  /* open second file */
  if ((fp2 = fopen(filename2, "w")) == NULL)
  {
    printf("Cannot open second file %s.\n", filename2);
    exit(1);
  }

  while (feof(fp1) == 0)
  {
    if (fgets(str, MAX_STR_LEN, fp1) != NULL)
    {
      strncpy(tmp, &str[1], 5);
      tmp[5] = '\0';
      if (strcmp(tmp, "dummy") != 0)
      {                                         // SALTO PREDICATI DUMMY-FACT e DUMMY-TABUSTATE
        if (strstr(tmp, "not-unary") != NULL || // FIX CASO SPECIALE PER PIPESWORLD
            strstr(tmp, "not-") == NULL)        // SALTO PREDICATI NEGATI (derivanti ad es. dall'uso della tabu state)
          fprintf(fp2, "%s", str);
        /*
  strncpy(tmp, &str[1], 3);
  tmp[3] = '\0';
  if (strcmp(tmp, "not") != 0) fprintf(fp2, "%s", str); // SALTO PREDICATI NEGATI (derivanti ad es. dall'uso della tabu state)
*/
      }
    }
  }

  fclose(fp1);
  fclose(fp2);
  remove(filename1);
} // end modifyANDrename

void run_trapper(int goals, char *planner)
{
  char tmp[MAX_STR_LEN];

  // Workaround for empty plans
  // SS: I think this validates an empty plan against domain.pddl pfile.pddd. If the empty plan gets the goal, then done
  snprintf(tmp, MAX_STR_LEN, COMMAND_VAL_EMPTYPLAN, __TOOLDIR__);
  int x = system(tmp);
  if (x == 0)
    return;

  if (strcmp(planner, "lmcut_trap") == 0)
  {
    snprintf(tmp, MAX_STR_LEN, COMMAND_TRAPPER, __TOOLDIR__, goals);
  }
  else if (strcmp(planner, "lmcut_no_trap") == 0)
  {
    snprintf(tmp, MAX_STR_LEN, COMMAND_NO_TRAPPER, __TOOLDIR__, goals);
  }
  else if (strcmp(planner, "dfs_trap") == 0)
  {
    snprintf(tmp, MAX_STR_LEN, COMMAND_DFS_TRAPPER, __TOOLDIR__, goals);
  }
  else if (strcmp(planner, "dfs_no_trap") == 0)
  {
    snprintf(tmp, MAX_STR_LEN, COMMAND_DFS_NO_TRAPPER, __TOOLDIR__, goals);
  }
  else if (strcmp(planner, "lpg") == 0)
  {
    snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_1SOL, __TOOLDIR__, rand());
  }
  printf("Running trapper as follows: %s\n", tmp);
  system(tmp);

  remove("endstate.txt");
  //validating plan
  snprintf(tmp, MAX_STR_LEN, COMMAND_VAL_PLAN, __TOOLDIR__);
  x = system(tmp);
  if (x != 0)
    return;

  if (file_exists("soln.tmp") == TRUE)
  { /* Per creazione endstate.txt */
    //workaround actions with no parameters
    system("cat soln.tmp | sed 's/ )/)/' > soln.tmp1; mv -T soln.tmp1 soln.tmp");
    snprintf(tmp, MAX_STR_LEN, COMMAND_LPG_INPUTSOL, __TOOLDIR__, 1234);
    system(tmp);
    //exit(5);
    remove("soln.tmp");
  }
}

void define_initial_state(char **argv)
{

  create_problem_file(NULL, argv[1], argv[2], NULL);
  create_domain_file(NULL, argv[3], argv[4]);
  run_planner(0, NULL);

  if (file_exists("endstate.txt") == FALSE)
  {
    printf("Warning: endstate.txt doesn't exist!!\n\n");
    exit(1);
  }

  modifyANDrename("endstate.txt", "N0S0");
  NodeVect[0].S = (State *)calloc(MAX_STATE, sizeof(State));
  NodeVect[0].S[0].num = 0;
  strcpy(NodeVect[0].S[0].stateFilename, "N0S0");
  NodeVect[0].S[0].sourceState[0] = -1;
  NodeVect[0].S[0].sourceNode[0] = -1;
  NodeVect[0].S[0].numSource = 1;
  NodeVect[0].numS = 1;
  NodeVect[0].numT = 0;
  NodeVect[0].T = NULL;
  NodeVect[0].count = 1;
}

void getFutureGoalsR(Node *n, int visited[], char *fgoals, int *fgoalscount)
{
  if (visited[n->num] == 1)
    return; //node has aready been visited
  visited[n->num] = 1;
  for (int e = 0; e < n->numE; e++)
  { //for each output edge
    // printf("Node %i goal: %s future_goalscount: %i\n",n->num,n->E[e].goalFilename,*fgoalscount);
    strncpy(fgoals + (*fgoalscount) * MAX_STR_LEN, n->E[e].goalFilename, MAX_STR_LEN);
    (*fgoalscount)++;
    getFutureGoalsR(&NodeVect[n->E[e].to_node], visited, fgoals, fgoalscount);
  }
}

int create_graph(char *argv[])
{

  int to, from, numnode = 0, i;
  char goal[MAX_STR_LEN];
  char st[MAX_STR_LEN];
  char *str = st;

  FILE *fp = fopen(argv[5], "r");

  if (fp == NULL)
  {
    printf("File %s does not exist!\n", argv[5]);
    exit(1);
  }

  memset(NodeVect, 0, MAX_NODE * sizeof(Node));
  for (i = 0; i < MAX_NODE; i++)
  {
    NodeVect[i].num = -1;
  }

  while (feof(fp) == 0)
  {
    if (fscanf(fp, "%d %d %s", &from, &to, goal) > 0)
    {

      if (numnode >= MAX_NODE)
      {
        printf("NodeVect is full: Please recompile with a higher value than constant MAX_NODE\n");
        fflush(stdout);
        exit(1);
      }

      if (NodeVect[from].num < 0)
      {
        NodeVect[from].num = from;
        numnode++;
      }
      if (NodeVect[to].num < 0)
      {
        NodeVect[to].num = to;
        numnode++;
      }

      if (NodeVect[from].numE >= MAX_CONN)
      {
        printf("NodeVect[%d].E is full: Please recompile with a higher value than constant MAX_CONN\n", from);
        fflush(stdout);
        exit(1);
      }

      NodeVect[from].E[NodeVect[from].numE].to_node = to;
      strncpy(NodeVect[from].E[NodeVect[from].numE++].goalFilename, goal, MAX_STR_LEN);
      //determining how many goal atoms in the goal file
      FILE *fg = fopen(goal, "r");
      while (feof(fg) == 0)
      {
        if (fgets(str, MAX_STR_LEN, fg) != NULL)
        {
          str = strchr(str, '(');
          while (str != NULL)
          {
            NodeVect[from].E[NodeVect[from].numE - 1].numG++;
            str = strchr(str + 1, '(');
          }
          str = st;
        }
      }
      fclose(fg);
    }
  }

  int visitednodes[numnode];
  for (int i = 0; i < numnode; i++)
  {
    memset(visitednodes, 0, numnode * sizeof(int));
    //visitednodes[i]=1;
    getFutureGoalsR(&NodeVect[i], visitednodes, (char *) NodeVect[i].future_goals, &NodeVect[i].futuregoalcount);
  }

  //define_initial_state(argv);
  create_domain_file(NULL, argv[3], argv[4]);

  fclose(fp);

  return numnode;
}

void reset_graph()
{

  int i, j;

  rename("N0S0", "endstate.txt");
  system("rm N* -f");
  rename("endstate.txt", "N0S0");

  for (i = 0; i < numNode; i++)
  {

    if (NodeVect[i].S == NULL)
      NodeVect[i].S = (State *)calloc(MAX_STATE, sizeof(State));

    //    if (NodeVect[i].T == NULL)
    //      NodeVect[i].T = (State *) calloc (MAX_STATE, sizeof(TabuState));

    for (j = 0; j < NodeVect[i].numS; j++)
      NodeVect[i].S[j].numSource = 0;

    for (j = 0; j < NodeVect[i].numE; j++)
      NodeVect[i].E[j].numP = 0;

    if (i == 0)
      NodeVect[i].numS = NodeVect[i].count = 1;
    else
      NodeVect[i].numS = NodeVect[i].count = 0;
    NodeVect[i].numT = 0;
    NodeVect[i].T = NULL;
  }
}

Flaw selectFlaw()
{

  int i;
  Flaw f;

  // RANDOM SELECTION
  i = rand() % numFlaw;

  f = FlawVect[i];
  FlawVect[i] = FlawVect[--numFlaw];
  return f;
}

int countNumActs(char *filename)
{

  FILE *fp = fopen(filename, "r");
  int i = 0;
  char str[MAX_STR_LEN];

  while (feof(fp) == 0)
  {
    if (fgets(str, MAX_STR_LEN, fp) != NULL)
      i++;
  }

  fclose(fp);

  return i - 1;
}

int diff(char *filename1, char *filename2)
{

  FILE *fp1, *fp2;
  char ch1, ch2, same;
  unsigned long l;

  /* open first file */
  if ((fp1 = fopen(filename1, "r")) == NULL)
  {
    printf("Cannot open first file %s.\n", filename1);
    exit(1);
  }

  /* open second file */
  if ((fp2 = fopen(filename2, "r")) == NULL)
  {
    printf("Cannot open second file %s.\n", filename2);
    exit(1);
  }

  l = 0;
  same = 1;
  /* compare the files */
  while (!feof(fp1))
  {
    ch1 = fgetc(fp1);
    if (ferror(fp1))
    {
      printf("Error reading first file.\n");
      exit(1);
    }
    ch2 = fgetc(fp2);
    if (ferror(fp2))
    {
      printf("Error reading second file.\n");
      exit(1);
    }
    //    if (DEBUG1) printf("%c%c", ch1, ch2);
    if (ch1 != ch2)
    {
      fclose(fp1);
      fclose(fp2);
      return 1;
    }
    l++;
  }

  fclose(fp1);
  fclose(fp2);

  return 0;
}

void check_graph()
{

  int i, j, k, l, m, n, to_node, count, node, state;
  char tmp[MAX_STR_LEN];
  FILE *fp;

  for (i = 0; i < numNode; i++)
  {
    for (j = 0; j < NodeVect[i].numS; j++)
    {
      count = 0;
      for (k = 0; k < NodeVect[i].numE; k++)
      {
        for (l = 0; l < NodeVect[i].E[k].numP; l++)
        {
          if (NodeVect[i].E[k].P[l].state == NodeVect[i].S[j].num)
          {
            count++;
            break;
          }
        }
        if (l < NodeVect[i].E[k].numP)
        {
          to_node = NodeVect[i].E[k].to_node;

          for (m = 0; m < NodeVect[to_node].numS; m++)
          {
            for (n = 0; n < NodeVect[to_node].S[m].numSource; n++)
            {
              if (NodeVect[to_node].S[m].sourceNode[n] == NodeVect[i].num &&
                  NodeVect[to_node].S[m].sourceState[n] == NodeVect[i].S[j].num)
                break;
            }
            if (n < NodeVect[to_node].S[m].numSource)
              break;
          }
          if (m == NodeVect[to_node].numS)
          {
            printf("\nWarning for SOURCE-DATA: No state of node %d generated from plan %s of node %d state %d\n", NodeVect[to_node].num, NodeVect[i].E[k].P[l].PlanFilename, NodeVect[i].num, NodeVect[i].S[j].num);
            fflush(stdout);
            exit(1);
          }
        }
      }

      if (count == NodeVect[i].numE && NodeVect[i].numE > 0)
      { /* c'e' un piano per tutti gli archi */

        for (m = 0; m < numFlaw; m++)
        {
          if (NodeVect[i].num == FlawVect[m].node &&
              NodeVect[i].S[j].num == FlawVect[m].state)
            break;
        }
        if (m < numFlaw)
        {
          printf("\nWarning for FLAWVECT: Node %d State %d is in flaw-list\n", NodeVect[i].num, NodeVect[i].S[j].num);
          fflush(stdout);
          exit(1);
        }
      }
      else if (NodeVect[i].numE > 0)
      {

        for (m = 0; m < numFlaw; m++)
        {
          if (NodeVect[i].num == FlawVect[m].node &&
              NodeVect[i].S[j].num == FlawVect[m].state)
            break;
        }
        if (m == numFlaw)
        {
          printf("\nWarning for FLAWVECT: Node %d State %d is not in flaw-list\n", NodeVect[i].num, NodeVect[i].S[j].num);
          fflush(stdout);
          exit(1);
        }
      }
    }
  }

  for (i = 0; i < numFlaw; i++)
  {

    node = FlawVect[i].node;
    state = FlawVect[i].state;

    for (j = 0; j < NodeVect[node].numS; j++)
    {
      if (NodeVect[node].S[j].num == state)
      {
        break;
      }
    }
    if (j == NodeVect[node].numS)
    {
      printf("\nWarning for STATE: State %d of Node %d does not exists but it is in flaw-list\n", NodeVect[node].S[state].num, NodeVect[node].num);
      fflush(stdout);
      exit(1);
    }
  }

  for (i = 0; i < numNode; i++)
  {
    for (j = 0; j < NodeVect[i].numS; j++)
    {
      if ((i > 0 || NodeVect[i].S[j].num > 0) && NodeVect[i].S[j].numSource == 0)
      {
        printf("\nWarning for STATE: State %d of Node %d with no source\n", NodeVect[i].S[j].num, i);
        fflush(stdout);
        exit(1);
      }
      for (k = 0; k < NodeVect[i].S[j].numSource; k++)
      {
        node = NodeVect[i].S[j].sourceNode[k];
        state = NodeVect[i].S[j].sourceState[k];

        for (l = 0; l < NodeVect[node].numE; l++)
        {
          if (NodeVect[node].E[l].to_node == NodeVect[i].num)
            break;
        }
        for (m = 0; m < NodeVect[node].E[l].numP; m++)
        {
          if (NodeVect[node].E[l].P[m].state == state)
            break;
        }
        if (m == NodeVect[node].E[l].numP)
        {
          printf("\nWarning for PLAN: State %d of Node %d with sourcestate %d and sourcenode %d without the plan\n", NodeVect[i].S[j].num, NodeVect[i].num, state, node);
          fflush(stdout);
          exit(1);
        }
      }
    }
  }

  for (i = 0; i < numNode; i++)
  {
    for (j = 0; j < NodeVect[i].numS; j++)
    {

      snprintf(tmp, MAX_STR_LEN, "N%dS%d", NodeVect[i].num, NodeVect[i].S[j].num);

      if (file_exists(tmp) == FALSE)
      {
        printf("\nWarning for FILE: State %d of Node %d\n", NodeVect[i].num, NodeVect[i].S[j].num);
        fflush(stdout);
        exit(1);
      }
    }

    for (j = 0; j < NodeVect[i].numE; j++)
    {
      for (k = 0; k < NodeVect[i].E[j].numP; k++)
      {
        if (file_exists(tmp) == FALSE)
        {
          printf("\nWarning for FILE: %s\n", NodeVect[i].E[j].P[k].PlanFilename);
          fflush(stdout);
          exit(1);
        }
      }
    }
  }

  for (i = 0; i < numNode; i++)
  {
    for (l = 0; l < MAX_STATE; l++)
    {

      snprintf(tmp, MAX_STR_LEN, "N%dS%d", NodeVect[i].num, l);

      if (file_exists(tmp) == TRUE)
      {
        for (j = 0; j < NodeVect[i].numS; j++)
        {
          if (NodeVect[i].S[j].num == l)
            break;
        }
        if (j == NodeVect[i].numS)
        {
          printf("\nWarning for FILE+: %s should not exist!\n", tmp);
          fflush(stdout);
          exit(1);
        }
      }
    }
  }

  for (i = 0; i < numNode; i++)
  {
    for (j = 0; j < NodeVect[i].numE; j++)
    {
      for (l = 0; l < MAX_STATE; l++)
      {

        snprintf(tmp, MAX_STR_LEN, "N%dN%dS%d", NodeVect[i].num, NodeVect[i].E[j].to_node, l);

        if (file_exists(tmp) == TRUE)
        {
          for (k = 0; k < NodeVect[i].E[j].numP; k++)
          {
            if (strcmp(NodeVect[i].E[j].P[k].PlanFilename, tmp) == 0)
              break;
          }
          if (k == NodeVect[i].E[j].numP)
          {
            printf("\nWarning for FILE+: %s should not exist!\n", tmp);
            fflush(stdout);
            exit(1);
          }
        }
      }
    }
  }
}

void update_graph(int numNode, int numState)
{

  NodeState v[MAX_FLAW], *vi = &v[0], *vf = &v[1];
  int n = 0, i, j, k, l;
  char tmp[MAX_STR_LEN];

  vi->node = numNode;
  vi->state = numState;

  while (vi < vf)
  {

    if (DEBUG2)
    {
      printf("\n  Remove state %d of node %d", vi->state, vi->node);
    }

    snprintf(tmp, MAX_STR_LEN, "N%dS%d", vi->node, vi->state);
    remove(tmp);

    /* Remove state s from node */
    for (l = 0; l < NodeVect[vi->node].numS; l++)
      if (NodeVect[vi->node].S[l].num == vi->state)
        break;

    if (l < NodeVect[vi->node].numS)
    {
      NodeVect[vi->node].numS = NodeVect[vi->node].numS - 1;
      NodeVect[vi->node].S[l] = NodeVect[vi->node].S[NodeVect[vi->node].numS];
    }
    else
    {
      printf("\nWarning!!!");
      continue;
    }

    /* Remove state s for its node from flaw */
    for (l = 0; l < numFlaw; l++)
    {
      if (FlawVect[l].node == vi->node && FlawVect[l].state == vi->state)
        break;
    }
    if (l < numFlaw)
    {
      if (DEBUG2)
      {
        printf("\n    Remove flaw: State %d Node %d", vi->state, vi->node);
        fflush(stdout);
      }
      numFlaw = numFlaw - 1;
      FlawVect[l] = FlawVect[numFlaw];
    }

    for (i = 0; i < NodeVect[vi->node].numE; i++)
    {

      for (j = 0; j < NodeVect[vi->node].E[i].numP; j++)
      {
        if (NodeVect[vi->node].E[i].P[j].state == vi->state)
          break;
      }
      if (j < NodeVect[vi->node].E[i].numP)
      {
        if (DEBUG2)
        {
          printf("\n  Remove plan %s from edge <%d,%d>", NodeVect[vi->node].E[i].P[j].PlanFilename, vi->node, NodeVect[vi->node].E[i].to_node);
          fflush(stdout);
        }
        remove(NodeVect[vi->node].E[i].P[j].PlanFilename);
        NodeVect[vi->node].E[i].numP = NodeVect[vi->node].E[i].numP - 1;
        NodeVect[vi->node].E[i].P[j] = NodeVect[vi->node].E[i].P[NodeVect[vi->node].E[i].numP];
        /* Lo stato risultante e' da rimuovere in una iterazione successiva */
        for (k = 0; k < NodeVect[NodeVect[vi->node].E[i].to_node].numS; k++)
        {
          for (l = 0; l < NodeVect[NodeVect[vi->node].E[i].to_node].S[k].numSource; l++)
          {
            if (NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceNode[l] == vi->node && NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceState[l] == vi->state)
            { /* remove the source */
              if (DEBUG2)
              {
                printf("\n    Remove source from Node %d State %d", NodeVect[NodeVect[vi->node].E[i].to_node].num, NodeVect[NodeVect[vi->node].E[i].to_node].S[k].num);
                fflush(stdout);
              }
              NodeVect[NodeVect[vi->node].E[i].to_node].S[k].numSource -= 1;
              NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceState[l] = NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceState[NodeVect[NodeVect[vi->node].E[i].to_node].S[k].numSource];
              NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceNode[l] = NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceNode[NodeVect[NodeVect[vi->node].E[i].to_node].S[k].numSource];
              if (NodeVect[NodeVect[vi->node].E[i].to_node].S[k].numSource == 0)
              {
                vf->node = NodeVect[vi->node].E[i].to_node;
                vf->state = NodeVect[vf->node].S[k].num;
                vf++;
              }
            }
            //	      break;
          }
          /* there is no path to NodeVect[NodeVect[vi->node].E[i].to_node].S[k] anymore */
          ///	  if (NodeVect[NodeVect[vi->node].E[i].to_node].S[k].sourceNode[l] == vi->node && NodeVect[NodeVect[vi->node].E[i].to_node].S[k].numSource == 0)
          //	    break;
        }
        //	if (k < NodeVect[NodeVect[vi->node].E[i].to_node].numS) {
        //	  vf->node = NodeVect[vi->node].E[i].to_node;
        //	  vf->state = NodeVect[vf->node].S[k].num;

        //	  NodeVect[vf->node].numS--;
        //	  NodeVect[vf->node].S[k] = NodeVect[vf->node].S[NodeVect[vf->node].numS];

        //	  vf++;
      }
    }

    vi++;
  }

  //  print_graph();
  //  print_flaws();
  //  exit(0);
}

void print_graph()
{

  int i, j, k, l;

  printf("\n\n####### CURRENT GRAPH #######\n");
  for (i = 0; i < numNode; i++)
  {
    printf("## NODE: %d \n# List of States:\n", NodeVect[i].num);
    for (j = 0; j < NodeVect[i].numS; j++)
    {
      printf("  State %d, %s [derived from node %d and state %d]\n",
             NodeVect[i].S[j].num,
             NodeVect[i].S[j].stateFilename,
             NodeVect[i].S[j].sourceNode[0],
             NodeVect[i].S[j].sourceState[0]);
      for (l = 1; l < NodeVect[i].S[j].numSource; l++)
        printf("\t\t[derived from node %d and state %d]\n",
               NodeVect[i].S[j].sourceNode[l],
               NodeVect[i].S[j].sourceState[l]);
    }
    printf("Future goals:");
    for (int q = 0; q < NodeVect[i].futuregoalcount; q++)
    {
      printf(" %s", NodeVect[i].future_goals[q]);
    }
    printf("\n");
    printf("# List of Plans:\n");
    for (j = 0; j < NodeVect[i].numE; j++)
    {
      for (k = 0; k < NodeVect[i].E[j].numP; k++)
      {
        printf("  Plan %s for state %d\n", NodeVect[i].E[j].P[k].PlanFilename, NodeVect[i].E[j].P[k].state);
      }
    }
  }
  printf("\n");
}

void print_flaws()
{
  int ind;

  printf("\n\nList of flaw:\n");
  for (ind = 0; ind < numFlaw; ind++)
    printf("NODE: %d STATE %d\n", FlawVect[ind].node, FlawVect[ind].state);
}

/* 
  Main procedure
 */
int main(int argc, char *argv[])
{
  int indStep, indRestart, x, i, j, k, l, m, flawState, fail, bestState;
  Flaw f;
  Node *x1, *x2;
  Edge *e;

  char *objFilename = argv[1];
  char *initFilename = argv[2];
  char *predicatesFilename = argv[3];
  char *actsFilename = argv[4];
  char *graphFilename = argv[5];
  char stateFilename[MAX_STR_LEN];
  char tmp[MAX_STR_LEN];
  FILE *fp;

  // We need 8 arguments, with the last one being what planner to use
  if (argc != 8)
  {
    printf("Incorrect command line: <Obj-FILE> <InitialState-FILE> <predicate-file> <Act-FILE> <GRAPH-FILE> <seed> <planner_type>\n");
    exit(1);
  }

  // 6th argument is the seed for LPG
  seed = atoi(argv[6]);
  srand(seed);

  numNode = create_graph(argv);
  //print_graph();
  //exit(0);

  x1 = &NodeVect[0]; //initial node

  for (int i = 0; i < MAX_STEPS; i++)
  {

    if (x1->numE == 0)
      break; //no outgoing edges

    e = &(x1->E[rand() % x1->numE]); //select random outgoing edge

    create_problem_file(&NodeVect[e->to_node], objFilename, initFilename, e->goalFilename);

    // Now we call the TRAPPER tool
    run_trapper(e->numG, argv[7]);

    if (file_exists("endstate.txt") == FALSE)
    {
      printf("\nFAIL\n");
      exit(0);
    }

    initFilename = "endstate.txt";
    x1 = &NodeVect[e->to_node];
  }
  printf("\nSUCCESS\n");
  exit(0);
}
