require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
animals1 = Animal.new("dog" , 10 , "tom1")
animals2 = Animal.new("cat" , 11 , "tom2")
animals3 = Animal.new("horse" , 12 , "tom3")
animals4 = Animal.new("lion" , 13 , "tom4")
animals5 = Animal.new("lion" , 13 , "tom4")
animals6 = Animal.new("dog" , 13 , "tom4")

zooinfo1 = Zoo.new("zooname0"  ,"location0")
zooinfo2 = Zoo.new("zooname1" , "location1" )
zooinfo3 = Zoo.new("zooname2" , "location1" )

puts zooinfo1.find_by_species("lion")

puts zooinfo3.find_by_location("location1")

puts animals1.find_by_species("dog")

binding.pry
puts "done"