class Zoo
    
    attr_reader :location, :name

    def initialize (name, location)
        @name = name
        @location = location
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        unique_species = []
        self.animals.each do |animal|
            if !unique_species.include?(animal.species)
                unique_species << animal.species
            end
        end
        unique_species
    end

    def find_by_species(species)
        self.animals.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        nicknames_storage = []
        self.animals.map do |animal|
            nicknames_storage << animal.nickname
        end
        nicknames_storage
    end

    def self.find_by_location(location)
        self.all.select do |zoo|
            zoo.location == location
        end
    end
end