require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx", "Bronx")
animal1 = Animal.new("cat", 10, "mimi", zoo1)
animal2 = Animal.new("cat", 12, "garfield", zoo1)
zoo1.animal_species

binding.pry
puts "done"
