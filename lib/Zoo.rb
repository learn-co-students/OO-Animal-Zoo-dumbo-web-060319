class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        #return all the animals that a specific instance of a zoo has

        Animal.all.select { |animal| animal.location == self}
    end

    def animal_species
        #return an array of all the species (as strings) of the animals in the zoo
        species_arr = []
        self.animals.each do |animal| 
           if animal.location == self
            species_arr << animal.species
            end
        end
        return species_arr.uniq.join(", ")
    end

    def find_by_species(animal_species)
        #should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
        self.animals.select {|animal| animal.species == animal_species}
    end

    def animal_nicknames
        nicknames_arr = []
        self.animals.each do |animal| 
           if animal.location == self
            nicknames_arr << animal.nickname
            end
        end
        return nicknames_arr
    end

    def self.find_by_location(location)
         #class method
        #should take in a location as an argument and return an array of all the zoos within that location.
       @@all.select { |zoo| zoo.location == location }
    end

end
