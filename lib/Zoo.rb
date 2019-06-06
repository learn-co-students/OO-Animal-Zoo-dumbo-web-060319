require "pry"

class Zoo
 
    attr_reader :location, :name
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
       Animal.all.select {|animal| animal.zoo == self}
      

    end

    def animal_species
        unique_arr = []
        self.animals.each {|animal| 
        if unique_arr.include?(animal.species)
        else
        unique_arr << animal.species
        end }

    end

    def find_by_species(species)
        self.animals.select {|animal|
         animal.species == species}
    end

    def animal_nicknames
        nicknames = []
        self.animals.each do |animal|
          nicknames << animal.nickname
        end
        nicknames
    end

    def self.find_by_location(location)
        @@all.select {|zoo| zoo.location == location}

    end

end
