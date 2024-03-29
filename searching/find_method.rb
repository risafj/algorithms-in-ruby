require_relative 'people'

# Using the built-in .find method
# https://www.geeksforgeeks.org/ruby-enumerable-find-function/

def find_by_id(id:)
  @people.find { |p| p[:id] == id }
end

# puts find_by_id(id: 1000)
