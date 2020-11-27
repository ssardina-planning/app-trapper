
To run:

../pp-lpg obj.pddl init.pddl predicates.pddl acts.pddl graph.txt 1234

1234 is a seed and is required.


This will generate files of the form N0N1S0.soln with solutions for each node.
 


If when run you get something like this:

[ssardina@ssardina-Latitude-E7440 Example]$ ../pp-lpg obj.pddl
init.pddl predicates.pddl acts.pddl graph.txt 1234
sh: 1: /home/lpg/PlanningProgram/CODE/lpg: not found
Warning: endstate.txt doesn't exist!!

Then do this:

Change the path definition in def.h. In def.h, "/home/lpg/PlanningProgram/CODE“ should be the path where you have the LPG executable.


