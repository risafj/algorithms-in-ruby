require_relative 'people'

def serial_search(id)
  PEOPLE.each do |p|
    return p if p[:id] == id
  end

  'Could not find person'
end

puts serial_search(5)
