class Artist

  attr_reader :name, :years_experience

  @@all = [] #setting class variable = to an array 

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self  #pushing each new Artist class instance into the array
  end

  def self.all #reads the class array
    @@all
  end 

  def paintings
    Painting.all.select {|painting| painting.artist == self} #from the Painting.all array, selects the painting == to the self (Artist this method is being called upon)
  end 

  def galleries
    paintings.map {|painting| painting.gallery} #the array from the painting method is used to map out all the galleries for a specific artist 
  end 

  def cities
    galleries.map {|gallery| gallery.city} #the array from the galleries method (which has an array of all the galleries of a specific artist) is used to map out the cities of the galleries 
  end 

  def self.total_experience
    total = 0 
    self.all.each do |artist| #goes through the artist array 
      total += artist.years_experience  #picks up the total years of experience and adds it to the total
    end 
    total
  end 
  
  def self.most_prolific
    self.all.max_by do |artist| #goes through the artist array with .max_by, this method gives back an array that has the max paintings from a single artist (that's why we use self) 
      artist.paintings.length / artist.years_experience 
    end 
  end 

  def create_painting(title, price, gallery)
    Painting.new(title,price,self,gallery) #this method creates a new painting with the arguments passed and self (which refers to the artist being called on)
  end 

end

