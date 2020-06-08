class Artist

  attr_reader :name, :years_experience
  @@all=[]
  @@years_experience=[]
  

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all<<self
    @@years_experience<<years_experience
    
  end
  def years_experience=(years_experience)
    @years_experience=years_experience
  end 

  def all
    @@all
  end 
  def paintings
    Artist.painting.@@all 
  end 
  def galleries
    Artist.Gallery.@@all
  end 
  def total_experience
    sum=0
    years_experience.each{|b| sum+=b}
  end 
  def most_prolific

  end 
  def create_painting
    Artist=Painting.new
  end




end
# I used stack overflow to help me get the total experience. Here is the link: https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
