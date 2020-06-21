class Artist

  attr_reader :name, :years_experience, :donor

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @years_experience = hash[:years_experience]
    @donor = hash[:donor]
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
    paintings.map do |painting| 
      painting.gallery 
    end.uniq
  end

  def cities 
    galleries.map do |gallery|
      gallery.city
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

  def donor
    Donor.all.select do |donor|
      donor.name == @donor
    end
  end

  def donations_recieved
    donor.map do |donor|
      donor.amount 
  end
end


end
