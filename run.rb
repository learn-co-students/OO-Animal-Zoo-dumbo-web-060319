require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Zoolandia", "Zooland")

animal1 = Animal.new("cat", 3, "happy", zoo1)
animal2 = Animal.new("dog", 5, "perrito", zoo1)
animal3 = Animal.new("dog", 5, "perrito", zoo1)
#Test your code here

binding.pry
puts "done"
