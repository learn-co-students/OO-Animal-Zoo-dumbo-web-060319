require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
da_zoo = Zoo.new("Da Zoo", "Brooklyn")
george = Animal.new("monkey", 45, "Curious", da_zoo)
regina = Animal.new("monkey", 60, "reg", da_zoo)

zoo2 = Zoo.new("ZooNumeroTwo", "Brooklyn")
tom = Animal.new("monkey", 34, "tim", zoo2)
felix = Animal.new("lion", 456, "Fe-Fe", zoo2)

binding.pry
puts "done"
