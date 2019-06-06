require 'pry'
class Animal
  
  attr_reader :species, :nickname, :zoo
  attr_accessor :weight

  @@all = []

  def initialize (species, weight, nickname, zoo)
  	@species = species
  	@weight = weight
  	@nickname = nickname
  	@@all << self
  	@zoo = zoo
  end

  def self.all 
  	@@all
  end

  def self.find_by_species input_species
  	@@all.select {|animal|
  	  animal.species == input_species
  	}
  end
end