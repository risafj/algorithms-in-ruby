require 'faker'

PEOPLE = []

(1..100_000).each do |n|
  PEOPLE << { id: n, name: Faker::Name.name }
end
