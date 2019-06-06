class Animal
    attr_reader :weight, :nickname
    attr_writer :weight
    attr_accessor :all_animals, :species
    @@all_animals = []

    def initialize(species, weight, nickname, zoo)
        @zoo = zoo          #Assigned a zoo!
        @species = species  #assigned specie
        @weight = weight 
        @nickname = nickname    
        @@all_animals << self   #Put self into global animal

        #REMOVED
        # @zoo.animals_in_this_zoo << self 
        
        

    end 

    def self.all 
        return @@all_animals
    end     
    def zoo 
        #later
        return @zoo
    end 
    def self.find_by_species(specie)
        #later
        @@all_animals.collect do |animal|
            animal.species == specie 
        end 
    end

end
