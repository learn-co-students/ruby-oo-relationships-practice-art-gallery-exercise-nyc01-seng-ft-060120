class Artist
  @@all = []

  attr_reader :name, :years_experience, :donor

  def initialize(name, years_experience, donor)
    @name = name
    @years_experience = years_experience
    @donor = donor
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    paintings.map { |painting| painting.gallery}
  end

  def cities
    galleries.map { |gallery| gallery.city}.uniq
  end

  def self.total_experience
    Artist.all.inject(0){ |sum, e| sum + e.years_experience}
  end

  def self.most_prolific
    Artist.all.max_by { |artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def show_donor
    return "Donor: #{@donor.name} | Donor amt: #{@donor.amount}"
  end

end
