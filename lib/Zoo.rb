class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name 
        @location = location
        @@all << self
        @animals = []
    end 

    def self.all
        @@all
    end

    def animals
        @animals
    end

    def animal_species
        species_array = []
        @animals.each do |animal|
            species_array << animal.species 
        end 
        species_array.uniq
    end 
    
    def find_by_species(target_species)
        @animals.select { |animal| animal.species == target_species}
    end 

    def animal_nicknames
        @animals.map { |animal| animal.nickname }
    end

    def self.find_by_location(location)
        self.all.select { |zoo| zoo.location == location }
    end 

end
