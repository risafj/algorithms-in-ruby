require_relative 'people'

# Using the built-in .find method
# https://www.geeksforgeeks.org/ruby-enumerable-find-function/

def name_by_id(id)
  PEOPLE.find {|p| p[:id] == id}[:name]
end

puts name_by_id(5)
