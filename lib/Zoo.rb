class Zoo
    attr_accessor :name, :location
    attr_reader 
    attr_writer

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
        Animal.all.select { |animal| animal.zoo == self }
    end

    def animal_species
        animals.map { |animal| animal.species }.uniq
    end

    def animal_nicknames
        animals.map { |animal| animal.nickname }
    end 

    def find_by_species(species)
        animals.select {|animal| animal.species == species}
    end

    def self.find_by_location(city) 
        self.all.select { |zoo| zoo.location == city }
    end 

end
