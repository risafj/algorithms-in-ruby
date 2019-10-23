require_relative 'people'
require 'pry'

def binary_search(arr: PEOPLE, min: 0, max: PEOPLE.length - 1, id:)
  middle_index = ((min + max) / 2).round
  value_at_half = arr[middle_index]
  # binding.pry

  return value_at_half if value_at_half[:id] == id
  
  if id > value_at_half[:id]
    binary_search(min: middle_index + 1, max: max, id: id)
  elsif id < value_at_half[:id]
    binary_search(max: middle_index -1, min: min, id: id)
  else
    raise StandardError, "min is #{min}, max is #{max}, value_at_half is #{value_at_half}"
  end
end

# puts binary_search(id: 10_000)