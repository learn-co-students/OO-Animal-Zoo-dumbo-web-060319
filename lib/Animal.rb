class Animal

    attr_writer :weight
    attr_reader :species, :nickname, :weight, :location

    @@all = []

    def initialize(species, weight, nickname, location)
        @species = species
        @weight = weight
        @nickname = nickname
        @location = location
        @@all << self
    end

    
     #class method
    def self.all
        #returns array of all the animals
        @@all
    end

    def zoo
        #returns zoo instance 
        self.location
    end

    #class method
    def self.find_by_species(species)
        #takes an animal species as an argument 
        #return array of all animals with that species
        @@all.select do |animal|
            animal.species == species 
            
        end
    end

end
