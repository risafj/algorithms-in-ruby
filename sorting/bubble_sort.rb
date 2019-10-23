require_relative 'numbers'

def bubble_sort
  changed = false

  (@numbers.count - 1).times do |n|
    first_value = @numbers[n]
    second_value = @numbers[n + 1]
    next if first_value <= second_value

    @numbers[n] = second_value
    @numbers[n + 1] = first_value
    changed = true
  end

  bubble_sort if changed == true
end

p "Pre-sort: #{@numbers}"
bubble_sort
p "Post-sort: #{@numbers}"
