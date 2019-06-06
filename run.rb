require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Zoo Instance Variables 
super_fun_zoo = Zoo.new("Super Fun Zoo", "Bronx, NYC")
omg_zoo = Zoo.new("OMG Zoo", "Manhattan, NYC")


#Animal Instance Variables

penelope = Animal.new("Penelope", "serpentalious", 30, omg_zoo)
canela = Animal.new("Canela", "canuslupis", 35, omg_zoo)
boo = Animal.new("Boo", "skunky", 186, omg_zoo)

kika = Animal.new("Kika", "canine", 15, super_fun_zoo)
beto = Animal.new("Beto", "turtle", 40, super_fun_zoo)
alex = Animal.new("Alex", "turtle", 40.1, super_fun_zoo)

binding.pry
puts "done"
