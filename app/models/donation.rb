class Donation

    attr_reader :donor, :artist, :amount

    @@all = []

    def initialize(donor, artist, amount)
        @donor = donor
        @artist = artist
        @amount = amount
        @@all << self
    end

    def self.all
        @@all
    end

end