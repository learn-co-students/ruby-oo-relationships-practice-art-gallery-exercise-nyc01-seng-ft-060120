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
      painting.artist == @name
    end
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities #couldn't get this to work 
    galleries.map do |gallery|
      gallery
    end
  end 

  def self.total_experience
    @@all.sum do |experience|
      experience.years_experience
    end
  end 

  def self.most_prolific
    paintings.length/self.total_experience
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
