class Zoo

    attr_reader :location
    attr_accessor :animals, :all_zoos, :name
    
    @@all_zoos = []
    def initialize(name, location)
        #REMOVED
        # @animals_in_this_zoo = []
        @name = name 
        @location = location 
        @@all_zoos << self 
    end 
    def animals 
        myArr=[]
        y = Animal.all 
        count = 0
        while (count < y.size)
            if y[count].zoo.name == @name
                myArr.push(y[count])
            end 
            count = count + 1
        end 
        return myArr
    end 
    def animal_species
        myArr=[]
        y= Animal.all 
        count = 0 
        while (count < y.size)
            if y[count].zoo.name == @name 
                myArr.push(y[count].species)
            end 
            count = count + 1
        end 
        q= myArr.uniq
        return q
    end 
    def find_by_species(specie)
        #later
        myArr = []
        counter = 0 
        y= Animal.all
        while (counter < y.size)
            if y[counter].zoo.name == @name 
                if y[counter].species == specie 
                    myArr.push(y[counter])
                end 
            end 
            counter = counter + 1 
        end 
        return myArr
    end 
    def animal_nicknames 
        #later
        myArr=[]
        allAnimals = Animal.all 
        count = 0
        while (count < allAnimals.size)
            if allAnimals[count].zoo.name == @name 
                myArr.push(allAnimals[count].nickname)
            end 
            count = count + 1
        end 
        return myArr
    end 
    def self.all
        #later 
        return @@all_zoos
    end     
    def self.find_by_location(loc)
        zooAt=[]
        @@all_zoos.each do |x|
            if x.location == loc 
                zooAt.push(x)
            end 
        end 
        return zooAt
    end 
end
