class Zoo
  attr_accessor :name, :location
  attr_reader :animals_list

  @@all = []

  #Instance Methods

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    animals.map { |animal| animal.species }.uniq
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.find_by_location(location)
    self.all.select do |l|  # s = location
      l.location == location
    end

  end

end
