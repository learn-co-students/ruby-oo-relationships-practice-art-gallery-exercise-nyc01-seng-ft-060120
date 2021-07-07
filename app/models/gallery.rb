class Gallery

  attr_reader :name, :city
  @@all=[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all<<self
  end
  def self.all 
    @@all 
  end
  def paintings
    Painting.all.select do |painting|
      painting.gallery==self
    end 
  end
  def artists
    Painting.all.map do |painting|
      painting.artist 
    end
  end
  def artist_names
    self.artists.map do |artist|
      artist.name 
    end
  end
  def most_expensive_painting
    art= self.paintings
    max=-1
    art.each do |painting|
      if max<painting.price
        max=painting.price
      end
    end
    art.find do |painting|
      painting.price==max
    end
  end 


end
