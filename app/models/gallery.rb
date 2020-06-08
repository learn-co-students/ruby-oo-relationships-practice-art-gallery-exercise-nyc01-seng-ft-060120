class Gallery

  attr_reader :name, :city
  @@all=[]
  @@names=[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all<<self
    @@names<<@name
  end
  def all 
    @@all 
  end
  def paintings
    Painting.@@all
  end
  def artists
    Artist.@@all 
  end
  def artist_names
    @@names 
  end
  def most_expensive_painting
  end 


end
