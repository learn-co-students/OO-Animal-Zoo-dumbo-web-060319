require "pry"

class Zoo
  attr_reader :location, :name

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select { |animal| animal.location == self }
  end

  def animal_species
    #return all the animal species in that zoo
    #the array shouldn't have duplicate species
    array = []
    self.animals.each do |animal|
      if animal.location == self
        array << animal.species
      end
    end
    array.uniq.join(" ")
  end

  def find_by_species(species)
    #should take in an argument of the animal species
    #find out which animal is of that species
    #find out which of that is in the zoo that is called
    #return an array of all the animals in the zoo
    #where do you want to start looking
    self.animals.select { | animal | animal.species == species }
  end

  def animal_nicknames
    #iterate through Zoo class array (@@all)
    #should return an array
    #return nicknames of all animals in a specific zoo
    nicknames = []
    self.animals.each do |animal|
      if animal.location == self
        nicknames << animal.nickname
      end
    end
    nicknames
  end

  def self.find_by_location(location)
    #class method
    #should take in an argument of the zoo location
    #return an array
    #should be a total of all the different zoos in that location
    @@all.select { |zoo| zoo.location == location}
  end

binding.pry
end
