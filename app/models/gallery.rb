class Gallery

  attr_reader :name, :city

  @@all = [] #setting class variable = to an array 


  def initialize(name, city)
    @name = name
    @city = city
    @@all << self #pushing each new Artist class instance into the array
  end

  def self.all
    @@all #reads the class array
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self} #takes the painting class array and selects paintings that are from the gallery called on
  end 

  def artists 
    paintings.map {|painting| painting.artist} #takes the array from the painting method and maps through it to return an array with all the artists from a specifci gallery
  end 

  def artist_names
    artists.map {|artist| artist.name} #uses the array from the artists method and maps out all the names of the artist from a specific gallery
  end 

  def most_expensive_painting
    painting.max {|painting| painting.price}
  end 

end
