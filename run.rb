require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


bronx = Zoo.new("Bronx Zoo", "NYC")
queens = Zoo.new("Queens Zoo", "NYC")
newjersey = Zoo.new("New Jersey Zoo", "NJ")

dog = Animal.new("dog", 25, "Woof alot", bronx)
wolf = Animal.new("dog", 40, "Howl alot", bronx)
cat = Animal.new("cat", 10, "Meow alot", queens)
lion = Animal.new("cat", 300, "Kill alot", queens)


binding.pry
puts "done"
