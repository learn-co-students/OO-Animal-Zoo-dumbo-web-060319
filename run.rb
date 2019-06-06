require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo_1 = Zoo.new("Cool Zoo", "NYC")
zoo_2 = Zoo.new("Chi Zoo", "CHI")
zoo_3 = Zoo.new("cool Zoo", "LA")
zoo_4 = Zoo.new("cool Zoo", "SAN")
zoo_5 = Zoo.new("The Zoo", "NYC")
zoo_6 = Zoo.new("A Zoo", "CHI")
zoo_7 = Zoo.new("LAX Zoo", "LA")
zoo_8 = Zoo.new("Big Zoo", "SAN")

animal_1 = Animal.new("Elephant", 2000, "Chonky", zoo_1)
animal_2 = Animal.new("Lion", 500, "Leo", zoo_1) 
animal_3 = Animal.new("Tiger", 356, "Khan", zoo_3)
animal_4 = Animal.new("Bear", 26, "Bozel", zoo_4)
animal_5 = Animal.new("Elephant", 2000, "Will", zoo_1)
animal_6 = Animal.new("Lion", 500, "Bud", zoo_1)
animal_7 = Animal.new("Tiger", 356, "Hope", zoo_3)
animal_8 = Animal.new("Bear", 26, "Ricky", zoo_4)



binding.pry
puts "done"