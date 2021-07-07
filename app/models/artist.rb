class Artist

  attr_reader :name, :years_experience 
  attr_accessor :donor

  @@all = []

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
    Painting.all.select { |painting|
      painting.artist == self
    }
  end

  def prolificacy
    #I am aware this is an obscure word, but theres no reason 
    #to call this outside of most_prolific so ¯\_(ツ)_/¯

   self.paintings.count/self.years_experience
  end

  def galleries
    self.paintings.map { |painting|
      painting.gallery
    }
  end

  def cities
    self.galleries.map { |gallery|
      gallery.city
    }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    total = 0
    @@all.map { |artist|
      total += artist.years_experience
    }
    total
  end

  def self.most_prolific
    @@all.max_by { |artist|
      artist.prolificacy
    }

  end

end
