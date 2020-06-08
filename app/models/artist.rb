require 'pry'
class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def paintings #return array of all paintings by an artist
    Painting.all.select do |painting| #should be a single iteration of what you are writing over
      painting.artist == self #iterating over instances of paintings and calling artist reader 
    end
  end 

  def galleries #return array of all galleries that an artist has paintings in
    paintings.map(&:gallery) #iterating through all paintings by artist and calling gallery reader 
  end 

  def cities #return array of all cities an artist has paintings in
    galleries.map(&:city) #iterating through all paintings by artist and calling city reader
  end 

  def self.total_experience #return integer of total yrs experience of ALL artists
    Artist.all.map(&:years_experience).sum #iterate thorugh array of all artists
    #call reader for exerperience and sum those
  end 

  def self.most_prolific #return instance of the artist with highest amount of paintings per year of experience
    Artist.all.max_by(1) {|artist| artist.paintings.count/artist.years_experience}
      #Look at all artists
      #max_by - Iterator that finds element that has the highest number
      #artist = object - each instance of artist 
      #count artist.paintings (total paintings for each artist instance)
      # divided total years experience -- reader method for each artist instance
  end 

  def create_painting (title, price, gallery) #creates new painting belonging to artist
    Painting.new(title, price, self, gallery)
  end 

end
binding.pry
