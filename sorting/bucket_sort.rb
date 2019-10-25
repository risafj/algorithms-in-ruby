require_relative 'numbers'
require 'pry'

def bucket_sort(bucket_number = 5)
  buckets = Bucket.create_buckets(bucket_number: bucket_number, min_number: @numbers.min, max_number: @numbers.max)
end

class Bucket
  attr_reader :min, :max

  def initialize(min:, max:)
    @min = min
    @max = max
  end

  def self.create_buckets(bucket_number:, min_number:, max_number:)
    interval = (max_number - min_number)/bucket_number

    buckets = []
    bucket_number.times do |n|
      min = min_number + interval * n
      # If last bucket, max should be the max number. Otherwise, add the interval.
      max = n == bucket_number - 1 ? max_number : (min_number + interval * (n + 1) - 1)
      buckets << Bucket.new(min: min, max: max)
    end
    buckets
  end
end

bucket_sort
