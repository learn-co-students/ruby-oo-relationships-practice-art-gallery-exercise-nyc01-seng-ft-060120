class Artist

  attr_reader :name, :years_experience, :donor
  @@all = []

  def initialize(name, years_experience,*donor)
    @name = name
    @years_experience = years_experience
    @donor = donor
    @@all << self

  end

    def self.all
      @@all
    end

    def paintings
      Painting.all.select {|paintings_obj| paintings_obj.artist == self}
    end

    def galleries
      self.paintings.map{|paintings_obj| paintings_obj.gallery}.uniq
    end

    def cities
      self.galleries.map{|paintings_obj| paintings_obj.city}.uniq
    end

    def self.total_experience
      self.all.inject(0){|sum,artist_obj| sum + artist_obj.years_experience}
    end

  
    def self.most_prolific
      Artist.all.max_by{|artist_obj| artist_obj.paintings.length/artist_obj.years_experience}
    end

    def create_painting(title,price,gallery)
      Painting.new(title,price,self,gallery)
    end

    def donor_list
      self.donor.map{|donor| donor.name}
    end

    def total_donations
      self.donor.inject(0){|sum,i| sum + i.amount}
    end


end

  # Artist should know the total amount donated to them

    # Artist.all---> Returns an array of all the artists

    # Artist#paintings --> Returns an array all the paintings by an artist

    # Artist#galleries --> Returns an array of all the galleries that an artist has paintings in

    # Artist#cities-->Return an array of all cities that an artist has paintings in

    # Artist.total_experience --> Returns an integer that is the total years of experience of all artists

    # Artist.most_prolific-->Returns an instance of the artist with the highest amount of paintings per year of experience.

    # Artist#create_painting-->Given the arguments of title, price and gallery, creates a new painting belonging to that artist