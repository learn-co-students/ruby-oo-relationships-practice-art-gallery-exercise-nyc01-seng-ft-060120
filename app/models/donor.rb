class Donor
attr_reader :name, :amount
@@all = []    

def initialize(name,amount)
    @name = name
    @amount = amount
    @@all << self
end

def self.all
    @@all
end

def donations
    Artist.all.select{|artist_obj| artist_obj.donor.include?(self)}
end

def artists
    self.donations.map{|artist_obj| artist_obj.name}
    
end

end


        # Artist can now have many Donors
        # Artist should know the names of all their donors
        # Donor should still know the names of all their Artists
        # Artist should know the total amount donated to them