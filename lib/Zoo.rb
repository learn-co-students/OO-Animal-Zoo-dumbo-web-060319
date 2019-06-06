class Zoo
    attr_reader :location, :name
 
    @@zooinfo = []
 
    def initialize(name, location)
        @name =  name
        @location = location
        @@zooinfo << self
    end
 
    def self.all
        @@zooinfo
    end
 
    def animals
        # returns all the animals of specific instance of zoo
        Animal.all
    end
 
    def animal_species
        #returns array of all animals (as string) using uinq method
         Animal.all.map{|as| as.species}.uniq.join(', ')
    end
 
    def find_by_species(animal_species)
        al =Animal.all.map{|as| as.species }
        al.select{|sas| sas == animal_species }
        #returns array of all animals of animal_species(arg)
        #[]
    end
 
    def animal_nickname
        an = Animal.all.map {|nn| nn.nickname}
        # all animal nickname of that zoo instance
        #[]
    end
    def find_by_location(arg_location)
        Zoo.all.select do |l|
            if l.location == arg_location
            puts l.name
            end
        end
 
    end
 
 end