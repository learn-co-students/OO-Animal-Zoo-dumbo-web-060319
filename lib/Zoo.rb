class Zoo
    attr_reader :location, :name 
    
    @@zooinfo = []
    
    def initialize(name, location)
        @name =  name 
        @location = location
        @@zooinfo << self
    end

    def self.all
        @@zooinfo
    end    
    def find_by_location(arg_location)
        self.select do |l| 
            if l.location == arg_location
            puts l.name
            end
        end

    end
end
