class Animal
    attr_accessor :weight
    attr_reader :species, :nickname
    @@animalinfo = []
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@animalinfo << self
    end

    def self.all
        @@animalinfo
    end 

    def animal_species
        #returns array of all animals (as string) using uinq method
        self.map{|as| as.species}.uniq.join(', ')    
    end
        
    def find_by_species(animal_species)
        al =self.map{|as| as.species }
        al.select {|sas| sas == animal_species }
        #returns array of all animals of animal_species(arg) 
        #[]
    end

    def animal_nickname 
        self.map {|nn| nn.nickname}
        # all animal nickname of that zoo instance
        #[]
    end


    def zoo
        self
    end

    def find_by_species(my_species)
        self.select do|as| 
            if as.species == my_species
                as.species
            end
        end
    end

    def animals
        # returns all the animals of specific instance of zoo
        self.all
    end


end
