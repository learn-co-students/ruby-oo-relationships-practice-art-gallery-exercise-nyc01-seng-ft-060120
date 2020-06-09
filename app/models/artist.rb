class Artist
  attr_reader :name, :years_experience
  @@all=[]
  
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all<<self
  end
  def years_experience=(years_experience)
    @years_experience=years_experience
  end 

  def self.all
    @@all
  end 
  def paintings
    Painting.all.select do |painting|
      painting.artist==self
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
  def self.total_experience
    sum=0
    @@all.each do |b| 
      sum+=b.years_experience
    end
    sum 
  end 
  def self.most_prolific
    max=-1
    @@all.each do |artist|
      score=artist.paintings.length / artist.years_experience
      if max<score
        max=score 
      end 
    end 
    @@all.find do |artist|
      score=artist.paintings.length / artist.years_experience 
      score==max 
    end 
  end 
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
# I used stack overflow to help me get the total experience. Here is the link: https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
