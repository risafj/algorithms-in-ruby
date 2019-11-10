require_relative 'numbers'
require_relative 'insertion_sort'

class BucketSorter
  attr_reader :buckets, :array_of_numbers

  def initialize(bucket_number: 5, array_of_numbers:)
    @buckets = create_buckets(bucket_number, array_of_numbers)
    @array_of_numbers = array_of_numbers
  end

  def bucket_sort
    sort_numbers_into_buckets

    # Using insertion sort inside each bucket.
    buckets.reduce([]) {|resulting_arr, bucket| resulting_arr.concat(InsertionSorter.new(bucket.content).insertion_sort) }
  end

  private

  def create_buckets(bucket_number, array_of_numbers)
    smallest_number = array_of_numbers.min
    largest_number = array_of_numbers.max
    buckets = []
    interval = (largest_number - smallest_number)/bucket_number

    bucket_number.times do |n|
      min = smallest_number + interval * n
      # If last bucket, max should be the max number. Otherwise, add the interval.
      max = n == bucket_number - 1 ? largest_number : (smallest_number + interval * (n + 1) - 1)
      buckets << Bucket.new(min: min, max: max)
    end
    buckets
  end

  def sort_numbers_into_buckets
    array_of_numbers.each do |n|
      buckets.each do |b|
        next unless n >= b.min && n <= b.max

        b.content << n
        break
      end
    end
  end

  class Bucket
    attr_reader :min, :max, :content

    def initialize(min:, max:, content: [])
      @min = min
      @max = max
      @content = content
    end
  end
end

# sorter = BucketSorter.new(array_of_numbers: @numbers)
# puts sorter.bucket_sort
