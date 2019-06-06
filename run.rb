require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("Queens Zoo", "Queens")
zoo3 = Zoo.new("Brooklyn Zoo", "Brooklyn")
 
animal1 = Animal.new("feline", "5", "kitty", zoo1)
animal2 = Animal.new("canine", "2", "doggy", zoo2)
animal3 = Animal.new("bird", "1", "tweety", zoo3)


binding.pry
puts "done"
