class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    galleries = self.paintings.map{|painting| painting.gallery}
    galleries.uniq
  end

  def cities
    cities = self.galleries.map{|gallery| gallery.city}
    cities.uniq
  end

  def self.all
    @@all
  end

  def self.total_experience
    @@all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
    @@all.max{|artist_a, artist_b| artist_a.paintings_per_yoe <=> artist_b.paintings_per_yoe}
  end

  def paintings_per_yoe
    self.paintings.count / self.years_experience
  end

end
