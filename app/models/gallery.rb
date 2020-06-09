class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @city = hash[:city]
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == @name
    end
  end

  def artists
    paintings.map do |painting|
      painting.title
    end
  end

  def artists_names
    paintings.map do |painting|
      painting.artist
    end
  end

  def most_expensive_painting
    paintings.max_by do |painting| 
      painting.price
    end
  end

end
