require 'pry'

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
       #return animals at a specific zoo
       #instance variable for the zoo
       Animal.all.select {|animal| animal.zoo == self}
   end

   def animal_species
       #returns array of all species (not repeating) as strings
       #go through #animals and select the species
       #use each and use unless/if
       unique_arr = []
	   self.animals.each {|animal| 
	     if unique_arr.include?(animal.species)
	     else
	       unique_arr << animal.species
	     end
	   }

   end

   def find_by_species
       #go through animals again and use select
       self.animals.select {|animal| animals.species == species}
   end

   def animal_nicknames
       #use select on animal array to return an array of nicknames for a specific zoo
       nicknames = []
       self.animals.each do |animal|
         nicknames << animal.nickname
       end
       nicknames
   end

   def self.find_by_location(location)
       #look through @@all
       #return zoo at that location using find

   end
end