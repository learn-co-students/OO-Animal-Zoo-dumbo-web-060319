class Animal
	attr_accessor :weight
	attr_reader :species, :nickname, :zoo

	@@all = []

	def initialize(species, weight, nickname, zoo)
		@species = species
		@weight = weight
		@nickname = nickname
		@zoo = zoo
		@zoo.animals << self
		@@all << self
	end

	def self.find_by_species(species_to_find)
		self.all.select {|animal| animal.species == species_to_find}
	end

	def self.all
		@@all
	end
end
