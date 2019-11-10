require_relative 'numbers'

class InsertionSorter
  attr_reader :array_of_numbers

  def initialize(array_of_numbers)
    @array_of_numbers = array_of_numbers
  end

  def insertion_sort
    max_index = array_of_numbers.size - 1

    (1..max_index).each do |current_index|
      (0..(current_index - 1)).each do |search_index|
        next if array_of_numbers[search_index] < array_of_numbers[current_index]

        array_of_numbers.insert(search_index, array_of_numbers.delete_at(current_index))
        break
      end
    end
    array_of_numbers
  end
end

# sorter = InsertionSorter.new(@numbers)
# puts sorter.insertion_sort
