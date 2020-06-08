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
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end.uniq
  end

  def self.total_experience
    Artist.all.map do |artist|
      artist.years_experience
    end.sum
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end

  def self.most_prolific
    @mostProlific = 0
    @profile = 0
    @i = 0
    while @i < Artist.all.length do
      @profile = Artist.all[@i].paintings.length/Artist.all[@i].years_experience
      if @profile > @mostProlific
        @mostProlific = @profile
      end
      @i += 1
    end

    @most_prolific
  end


end
