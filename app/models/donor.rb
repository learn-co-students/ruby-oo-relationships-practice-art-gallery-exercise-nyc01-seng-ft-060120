class Donor #created a new class because donor seemedd to be a new entity???

    attr_accessor :name


    def initialize (name) #pass name, amount and artist when creating new donor 
        @name = name
    end 

    def donations
        Donation.all.select {|donation| donation.donor == self}
    end 

    def artist
        donations.map {|artist| artist.artist}
    end

    def artist_names
        artist_names_array = []
        artist.each {|artist| artist_names_array << artist.name}
        artist_names_array.uniq
    end 

    
end 