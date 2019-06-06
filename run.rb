require_relative "./lib/Animal.rb"
require_relative "./lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("Bronx Zoo", "New York")
zoo2 = Zoo.new("Prison", "Tartarus")

animal1 = Animal.new("Hammy", "Hamadryas Baboon", 48, zoo1)
animal2 = Animal.new("Snatcher", "Masai Lion", 200, zoo1)

prisoner_x = Animal.new("Kronos", "Titan", 280, zoo2)
prisoner_xx = Animal.new("Krios", "Titan", 270, zoo2)
prisoner_y = Animal.new("Eris", "Child of Nyx", 158, zoo2)
prisoner_z = Animal.new("Kelli", "Empousa", 142, zoo2)

binding.pry

puts "done"
