class Artist
  @@all = []

  attr_reader :name, :years_experience, :donors

  def initialize(name, years_experience, donors)
    @name = name
    @years_experience = years_experience
    @donors = donors
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }.uniq
  end

  def self.total_experience
    Artist.all.sum{ |e| e.years_experience }
  end

  def self.most_prolific
    Artist.all.max_by { |artist| artist.paintings.length / artist.years_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def total_donations
    @donors.sum{ |e| e.amount }
  end

  def all_donors_by_name
    @donors.map{ |donor| donor.name }
  end

end
