require_relative 'numbers'

class MergeSorter
  attr_reader :array_of_numbers

  def initialize(array_of_numbers)
    @array_of_numbers = array_of_numbers
  end

  def merge_sort(arr = array_of_numbers)
    # Arrays with one or fewer elements are always sorted.
    return arr if arr.count <= 1

    middle_index = arr.count / 2
    left = arr[0...middle_index]
    right = arr[middle_index...arr.count]

    # Recursively call merge_sort until each array is one length long.
    merge(merge_sort(left), merge_sort(right))
  end

  private

  def merge(left, right)
    sorted = []

    until left.empty? || right.empty?
      if left.first <= right.first
        # Remove first element from left array, add it to sorted array.
        sorted << left.shift
      else
        # Or do the above for the right array.
        sorted << right.shift
      end
    end
    # We only loop through until left OR right is empty. So when the loop is done, we need to concat the remaining elements.
    sorted.concat(left).concat(right)
  end
end

sorter = MergeSorter.new(@numbers)
p sorter.merge_sort
