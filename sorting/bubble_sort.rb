require_relative 'numbers'
class BubbleSorter
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def bubble_sort
    changed = false

    (numbers.count - 1).times do |n|
      first_value = numbers[n]
      second_value = numbers[n + 1]
      next if first_value <= second_value

      numbers[n] = second_value
      numbers[n + 1] = first_value
      changed = true
    end

    bubble_sort if changed == true
  end
end

sorter = BubbleSorter.new(@numbers)
p "Pre-sort: #{sorter.numbers}"
sorter.bubble_sort
p "Post-sort: #{@numbers}"
