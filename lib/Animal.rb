require "pry"

class Animal
    attr_accessor :weight
    attr_reader :species, :nickname, :location

    @@all = []

  def initialize(species, weight, nickname, location)
    @species = species
    @weight = weight
    @nickname = nickname
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def zoo
    self.location
  end

  def self.find_by_species(species)
    #take in an animals species as an argument
    #return value is an array of the animals
    #as long as the animals are of the species(argument)
    @@all.select { |animal| animal.species == species}
  end

binding.pry
end
