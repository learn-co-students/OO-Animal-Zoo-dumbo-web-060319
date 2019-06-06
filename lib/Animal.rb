class Animal
   
    attr_accessor :weight, :zoo
    attr_reader :nickname, :species

    @@all = []

    def initialize(species,weight,nickname, zoo)
        @species = species
        @weight = weight 
        @nickname = nickname
        @zoo = zoo

        @zoo.animals << self
        @@all << self
    end 

    def zoo
        @zoo = @zoo
    end

    def self.all
        @@all
    end 

    def self.find_by_species(target_species)
        self.all.select { |animal| animal.species == target_species}
    end

end
