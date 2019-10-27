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
* Insertion sort
* Next: selection sort, merge sort, quick sort, heap sort


### Benchmark
```
                 user     system      total        real
bubble       9.085337   0.027637   9.112974 (  9.151190)
bucket       1.767285   0.002121   1.769406 (  1.771377)
insertion    1.678509   0.005159   1.683668 (  1.691017)
```

# References
* https://www.bbc.co.uk/bitesize/topics/z7d634j
* https://www.geeksforgeeks.org/sorting-algorithms/
* https://www.tutorialspoint.com/data_structures_algorithms/sorting_algorithms.htm
