class Donation

    attr_accessor :donor, :artist, :amount

    @@all = []

    def initialize(donor,amount,artist)
        @donor = donor
        @artist = artist
        @amount = amount
        @@all << self
    end 

    def self.all
        @@all
    end 


end 