# Benchmarks for APP via offline and online sovlers


To run the benchmarking script (in Benchmarks/ dir):

```bash
$ cd Benchmarks
run-bench-online <benchmark_set> <runs> <planner_type>
```

or

```bash
run-bench-offine <benchmark_set> <runs> <planner_type>
```


where:

* `<benchmark_set>` is a directory (without slash) where the benchmark set is stored, e.g. "`Logistics-TrickyRing`".
* `<runs>` - how many times the trapper tool is run per each problem
* `<planner_type>` - as specified above
