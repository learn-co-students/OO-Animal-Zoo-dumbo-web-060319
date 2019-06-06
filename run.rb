require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


################  ZOOS  #####################

da_zoo = Zoo.new("da zoo", "brooklyn")
nutha_zoo = Zoo.new("nutha zoo", "brooklyn")
nutha_nutha_zoo = Zoo.new("nutha nutha zoo", "bronx")

#############  ANIMALS   #############

becky = Animal.new("gorilla",700,"becky", da_zoo)
samantha = Animal.new("gorilla",700,"samantha", da_zoo)
lion = Animal.new("lion", 600,"tiger", da_zoo)

monkey = Animal.new("monkey", 60, "clyde", nutha_zoo)

monkey2 = Animal.new("monkey", 50, "bonnie", nutha_nutha_zoo)

binding.pry



puts "done"
