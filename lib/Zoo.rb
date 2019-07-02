require 'pry'
# A zoo should be initialized with a name and a location,
# which should both be passed as strings.
class Zoo
  # Zoo#location should return the location of the zoo instance.
  # Zoo#name should return the name of the zoo instance.
  attr_accessor :name, :location, :animal
  @@all = []

def initialize(name, location)
   @name = name
   @location = location
   @@all << self
end

def self.all
  @@all
end

#returns all the animals that a specific instance
#of a zoo has
def animals
  Animal.all.select {|ani| ani.zoo == self}
end

#returns an array of all the species of the animals
#in the zoo. ##works!
def animal_species
  animals.map {|species| species.species}
end

#should take in an animal's species as an argument
#and return an array of all the animals in that zoo,
#which are of that species ## not working yet
def find_by_species(species)
  Animal.all.select {|element| element.species.zoo == species}
end

#should return an array of all the nicknames of animals
#that a specific instance of a zoo has. ##works!
def animal_nicknames
  animals.map {|nickname| nickname.nickname}
end

#should take in a location as an argument and return
#an array of all the zoos within that location. ##works!!!
def self.find_by_location(location)
  Zoo.all.find {|element| element.location == location}
end

end
