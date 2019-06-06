class Animal

  attr_reader :weight, :species, :nickname, :zoo
  attr_writer :weight

  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
    @zoo = zoo
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    self.all.select do |s|  # s = species
      s.species == species
    end
  end

end
