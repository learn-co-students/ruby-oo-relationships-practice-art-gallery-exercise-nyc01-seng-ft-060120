class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def self.all #return array of all galleries 
    @@all 
  end 

  def paintings #return array of all paintings in a gallery
    Painting.all.select do |painting| #iterate through all paintings
      painting.gallery == self #return ones where the gallery is the instance
    end
  end 

  def artists #return array of all artists that have paintings in a gallery
    paintings.map do |artists| #iterate through new array of paintings in gallery
      artists.artist #use the reader method to get the artsits' names
  end 
end

  #can I just do 
  #def artists
    #paintings.map do |artists|
      #artists.artist

  def artist_names #return array of the names of all artists that have a painting in a gallery
    artists.name #pull array from artists method and call reader to get their name
  end 

  def most_expensive_painting #return instance of most expensive painting in a gallery
    gallery_paintings = Painting.all.select do |gallery| #iterate through all paintings
      gallery == self #return ones where the gallery is the instance
    end
    gallery_paintings.map(&:age).max
  end 

end
