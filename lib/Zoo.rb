class Zoo
    attr_reader :location, :name
    
    @@all = []

    def initialize (name, location)
        @name = name
        @location = location
    end
    
    def self.all 
        @@all
    end

    def animals
        Animal.all.select{ |animal| animal.zoo == self }
    end

    def animal_species
        species = []
        self.animals.map do |animal| 
            species << animal.species if !species.include?(animal.species)
        end
        species
    end

    def find_by_species(species)
        self.animals.map do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        nicknames = []
        self.animals.map do |animal|
            nicknames << animal.nickname
        end
        nicknames
    end

    def self.find_by_location(location)
        self.all.select |zoo|
            zoo.location == zoo
        end 
    end
