class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self}
  end

  def artists
    paintings.uniq.map { |painting| painting.artist }
  end

  def artist_names
    artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    paintings.max_by { |painting| painting.price }
  end

  
end
