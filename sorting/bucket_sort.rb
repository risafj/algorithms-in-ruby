require_relative 'numbers'
require 'pry'

def bucket_sort(bucket_number = 5)
  interval = (@numbers.max - @numbers.min)/bucket_number

  buckets = []
  bucket_number.times do |n|
    min = @numbers.min + interval * n
    # If last bucket, max should be the max number. Otherwise, add the interval.
    max = n == bucket_number - 1 ? @numbers.max : (@numbers.min + interval * (n + 1) - 1)
    buckets << Bucket.new(min: min, max: max)
  end

  statement = []
  buckets.each do |b|
    statement << "minimum is #{b.min}, maximum is #{b.max}"
  end

  p "min is #{@numbers.min}"
  p "max is #{@numbers.max}"
  p "interval is #{interval}"
  p statement
end
class Bucket
  attr_reader :min, :max

  def initialize(min:, max:)
    @min = min
    @max = max
  end
end

bucket_sort
