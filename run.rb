require_relative "./lib/Animal.rb"
require_relative "./lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1=Zoo.new("queens zoo","jamaica")
zoo2=Zoo.new("brooklyn zoo","brooklyn")

animal1=Animal.new("dog",45,"perro",zoo1)

animal2=Animal.new("cat",30,"prr",zoo2)
 animal3=Animal.new("dog", 2, "fido",zoo2)
 animal4=Animal.new("dog", 5,"dadf",zoo2)
 animal5=Animal.new("shark",200,"afd",zoo1)
 animal6=Animal.new("whale",300,"adsf",zoo1)





binding.pry
