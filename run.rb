require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


tampa = Zoo.new("Tampa Zoo", "Florida")
san_diego = Zoo.new("Big Zoo", "San Diego")
florida = Zoo.new("Little Zoo", "Florida")
york = Zoo.new("Medium Zoo", "York")
feline = Animal.new("cat", 35, "Bittles", san_diego)
tom = Animal.new("cat", 35, "Tom", san_diego)
carl = Animal.new("cat", 35, "Carl", florida)
ann = Animal.new("dog", 35, "Ann", florida)
don = Animal.new("dog", 35, "Don", york)
steven = Animal.new("dog", 35, "Steven", york)

binding.pry
puts "done"
