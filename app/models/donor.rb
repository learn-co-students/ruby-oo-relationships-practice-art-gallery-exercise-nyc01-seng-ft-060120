class Donor

    attr_reader :name, :amount

    @@all = []

    def initialize (hash)
        @name = hash [:name]
        @amount = [:amount]
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        Artist.all.select do |artist| 
            @name == artist.donor 
        end.uniq
    end



end















