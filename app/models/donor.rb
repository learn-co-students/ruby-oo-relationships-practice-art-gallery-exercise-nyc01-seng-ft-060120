class Donor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_donation(artist, amount)
        Donation.new(self, artist, amount)
    end

    def donations
        Donation.all.select{|donation| donation.donor == self}
    end

    def artists
        self.donations.map{|donation| donation.artist.name}.uniq
    end

    def self.all
        @@all
    end

end