class Animal
    attr_accessor :weight
    attr_reader :species, :nickname
    @@animalinfo = []
    def initialize(species, weight, nickname )
        @species = species
        @weight = weight
        @nickname = nickname
        @@animalinfo << self
    end
 
    def self.all
        @@animalinfo
    end
 
    def zoo
        # zoo instance that the instance belong too
 
    end
 
    def find_by_species(my_species)
        Animal.all.select do|as|
        if as.species == my_species
            as.species
        end
    end
end 
end