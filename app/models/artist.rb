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
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    sum = 0
    experience_for_all = @@all.map do |artist|
      artist.years_experience 
    end
    experience_for_all.map do |num|
      sum +=num
    end
    sum
  end

  def self.most_prolific
    all_paintings = @@all.map do |artist|
      artist.paintings
    end
    most_paintings = all_paintings.max_by {|p| p.length}
    most_paintings.map do |painting|
    painting.artist.name
    end.uniq

  end


end
