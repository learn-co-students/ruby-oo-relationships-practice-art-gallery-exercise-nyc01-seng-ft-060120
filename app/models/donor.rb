class Donor

    attr_reader :name, ammount

    def initialize(name, ammount)
        @name = name
        @ammount = ammount
    end
    
    def artists
        Artist.all.select{ |artist|
            artist.donor = self
        }.uniq
    end

end