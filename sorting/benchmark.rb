require 'benchmark'
require_relative 'bubble_sort'
require_relative 'bucket_sort'
require_relative 'insertion_sort'
require_relative 'numbers'
require 'pry'

Benchmark.bm(10) do |x|
  x.report('bubble') { BubbleSorter.new(@numbers).bubble_sort }
  x.report('bucket') { BucketSorter.new(array_of_numbers: @numbers).bucket_sort }
  x.report('insertion') { InsertionSorter.new(@numbers).insertion_sort }
end
