class Animal
    @@all=[]
    attr_accessor :weight
    attr_reader :species, :nickname 

    def initialize (species,weight,nickname,zoo)
        @species=species
        @weight=weight
        @nickname=nickname
        self.class.all << self
        @zoo=zoo
    end

    def self.all
        @@all
    end

    def zoo
        #should return the zoo instance that the instance belongs to.
    @zoo
    end

    def self.find_by_species(species)
        self.all.select {|animal_instances| animal_instances.species == species}
    end

end


