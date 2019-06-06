class Animal
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight

    @@all = []

    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        @species = species
        @zoo = zoo
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species_index)
        self.all.select do |animal|
            animal.species == species_index
        end
    end
end