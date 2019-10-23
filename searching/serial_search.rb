require_relative 'people'

def serial_search(id:)
  @people.each do |p|
    return p if p[:id] == id
  end

  'Could not find person'
end

# puts serial_search(id: 1000)
