class Animal
    attr_reader :species, :nickname, :location
    attr_accessor :weight

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
        #return the zoo instance that the instance belongs to.
        self.location
    end

    def self.find_by_species(species)
        #should take in an animal's species as an argument and return an array of all the animals, which are of that species.
        @@all.select { |animal| animal.species == species }

    end
end
