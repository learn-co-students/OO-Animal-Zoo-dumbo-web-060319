class Zoo
    attr_reader :name, :location 

    @@all = []

    def initialize(name, location)
        @name = name 
        @location = location
        @animals = []

        @@all << self 
    end

    def animals 
        @animals
    end

    def animal_species 
        species_array = []
        @animals.each { |animal| species_array << animal.species }
        species_array.uniq
    end

    def find_by_species(target_species) 
        @animals.select { |animal| animal.species == target_species}
    end

    def animal_nicknames 
        @animals.map { |animal| animal.nickname }
    end
    
    
    def self.all
        @@all 
    end

    def self.find_by_location(target_location) 
        Zoo.all.select { |zoo| zoo.location == target_location }
    end




end
