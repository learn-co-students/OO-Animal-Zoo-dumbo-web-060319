require_relative "./lib/Animal.rb"
require_relative "./lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("Bronx Zoo", "New York")

animal1 = Animal.new("Hammy", "Hamadryas Baboon", 48, zoo1)
animal2 = Animal.new("Snatcher", "Masai Lion", 200, zoo1)

binding.pry

puts "done"
