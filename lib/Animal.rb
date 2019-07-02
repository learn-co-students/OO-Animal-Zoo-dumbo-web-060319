require 'pry'
class Animal
attr_reader :nickname, :species
attr_accessor :weight, :zoo
@@all = []

def initialize(nickname, species, weight, zoo)
  @nickname = nickname
  @species = species
  @weight = weight
  @zoo = zoo
  @@all << self
end

def self.all
  @@all
end

#should take in an animal's species as an argument
#and return an array of all the animals, which are
#of that species.
def self.find_by_species
end

end
