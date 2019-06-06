

class Zoo

    attr_reader :name, :location

    def initialize(name, location)
        @name = name 
        @location = location
        @@all << self 
    end

    @@all = []

    #class method
    def self.all 
        @@ll
    end


    def animals
        Animal.all.select do |animal|
            animal.location == self
        end
    end

    def animal_species
    #iterate through zoo class and return array with  species
    #array should not have duplicates of any species
        array = []
        Animal.all.each do |animal|
          if  animal.location == self
            array << animal.species
          end
        end
    array.uniq.join(", ")
end

    def find_by_species(species)
      #take animal_species as an arg and return array  

      #self represents and instance of the zoo class
      self.animal.select do |animal|
        animal.species == species
      end
    end

    def animal_nicknames
    #returns array of all the nicknames of all animals in that zoo
    array = []
    self.animals.each do |animal|
      if  animal.location == self
        array << animal.nickname
      end
    end
    return array
    end 


    #class method
    def self.find_by_location(location)
        #give a location, I'll return all zoos with that location
            @@all.select do |zoo|
                zoo.location == location
            end
    end


end
