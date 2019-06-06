class Zoo
	attr_reader :location, :name, :animals

	@@all = []

	def initialize(name, location)
		@name = name
		@location = location
		@animals = []
		@@all << self
	end

	def animal_species
		animals.map {|animal| animal.species}.uniq
	end

	def find_by_species(species)
		animals.select {|animal| animal.species == species}
	end

	def animal_nicknames
		animals.map {|animal| animal.nickname}
	end

	def self.find_by_location(location)
		self.all.select do |zoo|
			zoo.location == location
		end
	end

	def self.all
		@@all
	end

end