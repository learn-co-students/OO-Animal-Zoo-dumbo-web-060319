class Animal
    attr_reader :species, :nickname 
    attr_accessor :weight 

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species 
        @weight = weight 
        @nickname = nickname
        @zoo = zoo 
        
        @zoo.animals << self
        @@all << self
    end

    def zoo 
        self.zoo
    end

    def zoo=(zoo)
        @zoo = zoo 
    end


    
    def self.all 
        @@all
    end

    def self.find_by_species(target_species)
        Animal.all.select { |animal| animal.species == target_species }
    end

end
