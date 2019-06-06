class Zoo
    @@all=[]
    attr_reader :name , :location
 def initialize (name,location)
    @name=name
    @location=location
    self.class.all << self
 end

 def self.all
    @@all
 end

 def animals
    #animals should return all the animals that a specific instance of a zoo has.
    Animal.all.select {|animal_ins| animal_ins.zoo == self}
 end

 def animal_species
self.animals.map{|animal_ins| animal_ins.species}.uniq
 end

 def find_by_species(species)
self.animals.select{|animal_ins| animal_ins.species == species}
 end

 def animal_nicknames
    self.animals.map{|animal_ins|  animal_ins.nickname}
 end

 def self.find_by_location(location)
    @@all.select{|zoo_ins| zoo_ins.location == location}
 end
end
