class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
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
      yrs_array = Artist.all.map{|artist_obj| artist_obj.years_experience}
      yrs_array.inject(0){|sum,i| sum + i}
    end

    def self.most_prolific
     
      artist_array =  Artist.all.map{|artist| artist.name}
      artist_exp =  Artist.all.map{|artist| artist.years_experience}
      artist_painting_num =  Artist.all.map{|artist| artist.paintings.length}
      perc = artist_painting_num.zip(artist_exp).map{|artist_painting_num, artist_exp| (artist_painting_num.to_f / artist_exp.to_f) * 100}

      hash = Hash[artist_array.zip(perc)]
      
      Artist.all.find{|artist| artist.name == hash.key(hash.values.max)}

      
    end

    def create_painting(title,price,gallery)
      Painting.new(title,price,self,gallery)
    end

end



    # Artist.all---> Returns an array of all the artists

    # Artist#paintings --> Returns an array all the paintings by an artist

    # Artist#galleries --> Returns an array of all the galleries that an artist has paintings in

    # Artist#cities-->Return an array of all cities that an artist has paintings in

    # Artist.total_experience --> Returns an integer that is the total years of experience of all artists

    # Artist.most_prolific-->Returns an instance of the artist with the highest amount of paintings per year of experience.

    # Artist#create_painting-->Given the arguments of title, price and gallery, creates a new painting belonging to that artist