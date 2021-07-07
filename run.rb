require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "NYC")
zoo2 = Zoo.new("San Diego Zoo", "The San Diego")

animal1 = Animal.new("Cutie", "tiger", 34, zoo1)
animal2 = Animal.new("Fluffy", "bear", 78, zoo2)

binding.pry
puts "done"
