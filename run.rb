require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new('bronx zoo', 'new york')
zoo2 = Zoo.new('central park zoo', 'new york')
zoo3 = Zoo.new('san diego zoo', 'california')

animal1 = Animal.new('elephant', 500, 'jeff', zoo1)
animal2 = Animal.new('elephant', 497, 'bob', zoo1)
animal3 = Animal.new('elephant', 447, 'hubert', zoo2)
animal4 = Animal.new('turtle', 5, 'tim', zoo2)
animal5 = Animal.new('snake', 1, 'sam', zoo3)
animal6 = Animal.new('bobcat', 100, 'ham', zoo1)

binding.pry
puts "done"
