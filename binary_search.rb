require_relative 'people'

def binary_search(id)
  return 'Could not find person' if id > PEOPLE.size

  slice_and_search(PEOPLE, id)
end

def slice_and_search(arr, id)
  half_size = (arr.count/2.0).round
  left, right = arr.each_slice(half_size).to_a
  id_at_half = arr[half_size - 1][:id]

  if id_at_half == id
    left.last[:name]
  elsif id_at_half < id
    slice_and_search(right, id)
  elsif id_at_half > id
    slice_and_search(left, id)
  end
end

puts binary_search(5)
