require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zooinfo1 = Zoo.new("zooname0"  ,"location0")
zooinfo2 = Zoo.new("zooname1" , "location1" )
zooinfo3 = Zoo.new("zooname2" , "location1" )


animals1 = Animal.new("dog" , 10 , "tom1", zooinfo1)
animals2 = Animal.new("cat" , 11 , "tom2", zooinfo2)
animals3 = Animal.new("horse" , 12 , "tom3", zooinfo3)
animals4 = Animal.new("lion" , 13 , "tom4", zooinfo1)
animals5 = Animal.new("lion" , 13 , "tom4", zooinfo2)
animals6 = Animal.new("dog" , 13 , "tom4", zooinfo3)


# puts zooinfo1.find_by_species("lion")

# puts zooinfo3.find_by_location("location1")

# puts animals1.find_by_species("dog")

binding.pry
puts "done"
