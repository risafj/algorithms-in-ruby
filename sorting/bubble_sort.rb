class BubbleSorter
  attr_reader :array_of_numbers

  def initialize(array_of_numbers)
    # Dup to avoid modifying the original array
    @array_of_numbers = array_of_numbers.dup
  end

  def bubble_sort
    changed = false

    (array_of_numbers.count - 1).times do |n|
      first_value = array_of_numbers[n]
      second_value = array_of_numbers[n + 1]
      next if first_value <= second_value

      array_of_numbers[n] = second_value
      array_of_numbers[n + 1] = first_value
      changed = true
    end

    bubble_sort if changed == true

    array_of_numbers
  end
end

# sorter = BubbleSorter.new(@numbers)
# p "Pre-sort: #{sorter.numbers}"
# p "Post-sort: #{sorter.bubble_sort}"
