require 'faker'

@people = []

(1..100_000).each do |n|
  @people << { id: n, name: Faker::Name.name }
end
