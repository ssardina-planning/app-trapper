# TRAPPER #

### Getting Started ###

You first need to install LAPKT by following this instructions: http://lapkt.org/index.php?title#Download

Yoy also need to define LAPKT_PATH as an enviromnent variable. Add the following line to your .bash or .profile file or simply execute it in your terminal:
```
  export LAPKT_PATH = /Absolute-path-to-LAPKT-folder
```
Trapper can run using either FF or FD parser.

### FF-parser version ###

The Scons script included in FF-parser-version folder knows which modules from the LAPKT toolkit it needs to recompile.

To compile type
```
  scons 
```  
### FD-parser version ###

Go to FD-parser-version folder and type to compile
```
  ./build.py 
```
# Running Trapper #

These are Trapper options
```
  ./trapper --help
  Options::
    --help                   Show help message
    --domain arg             Input PDDL domain description
    --problem arg            Input PDDL problem description
    --search arg             brfs_stats, brfs_trap, astar_trap, dfs+_trap
    --candidates arg         a1, a2, a3 (if omited no traps are computed)
    --goals arg              consider <arg> goals as "real" goals (last <arg> goals in PDDL problem definition are considered)
    --plan arg               output a plan
```
The command to run the FF-parser-version of Trapper, computing traps with tuples of at most size 2, and running A*(LMcut) using the computed trap to detect deadends
```
  ./trapper --domain ../pddl-examples/domain.pddl --problem ../pddl-examples/prob3.pddl --search astar_trap  --candidates a2
```
to use FD-parser version, go to the correct folder and run the same options with the following command
```
  ./trapper.py ../pddl-examples/domain.pddl ../pddl-examples/prob4.pddl astar_trap a2
```
FD-version uses the same options but do not uses tags.

# Credits #

This project is a joint work by Nir Lipovetzky, Christian Muise and Hector Geffner.

### Paper ###
You can read more about it in the [ICAPS 2016 paper](http://people.eng.unimelb.edu.au/nlipovetzky/papers/icaps16_trapper.pdf) 
  
