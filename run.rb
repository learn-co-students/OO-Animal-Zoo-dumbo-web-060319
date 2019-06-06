require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("Harambe Zoo", "Chicago")
animal1 = Animal.new("cat", 10, "mimi", zoo1)
animal2 = Animal.new("cat", 12, "garfield", zoo1)
animal3 = Animal.new("dog", 6, "april", zoo1)



binding.pry
puts "done"
