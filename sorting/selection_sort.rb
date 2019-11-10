require_relative 'numbers'

class SelectionSorter
  attr_reader :array_of_numbers

  def initialize(array_of_numbers)
    # Dup to avoid modifying the original array
    @array_of_numbers = array_of_numbers.dup
  end

  def selection_sort
    max_index = array_of_numbers.size - 1

    (0..max_index).each do |current_index|
      min_number_and_index_in_unsorted = array_of_numbers[current_index..max_index].each_with_index.min
      index_of_min_number_in_entire_array = min_number_and_index_in_unsorted[1] + current_index
      array_of_numbers.insert(current_index, array_of_numbers.delete_at(index_of_min_number_in_entire_array))
    end
    array_of_numbers
  end
end

# result = SelectionSorter.new(@numbers).selection_sort
# p result
