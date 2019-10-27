# Algorithms in Ruby
In order to learn the basics of searching and sorting algorithms, I am implementing each one and comparing their performance using the benchmark module.

## Searching
* Serial search
* Binary search
* Standard search using Ruby's built-in `find` method

### Benchmark
```
              user     system      total        real
serial    0.002017   0.000002   0.002019 (  0.002017)
binary    0.000011   0.000001   0.000012 (  0.000011)
find      0.001608   0.000010   0.001618 (  0.001619)
```

## Sorting
* Bubble sort
* Bucket sort
* Next: Insertion Sort (https://www.geeksforgeeks.org/insertion-sort/)

### Benchmark
```
              user     system      total        real
bubble    9.137935   0.017575   9.155510 (  9.175867)
bucket    1.779165   0.004595   1.783760 (  1.789324)
```

# References
https://www.bbc.co.uk/bitesize/topics/z7d634j
