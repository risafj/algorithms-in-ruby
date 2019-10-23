require 'benchmark'
require_relative 'binary_search'
require_relative 'serial_search'
require_relative 'find_method'

Benchmark.bm(7) do |x|
  x.report('serial') { serial_search(id: 10_000) }
  x.report('binary') { binary_search(id: 10_000) }
  x.report('find') { find_by_id(id: 10_000) }
end
