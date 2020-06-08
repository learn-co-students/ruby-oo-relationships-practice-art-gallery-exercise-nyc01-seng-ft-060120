class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = [] #setting class variable = to an array 

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist #a painting belongs to an artist, painting is the reference 
    @gallery = gallery #a painting belongs to a gallery, painting is the reference
    @@all << self #pushing each new Painting class instance into the array
  end

  def self.all
    @@all #reads the class array
  end 

  def self.total_price
    total = 0 
    self.all.each do |painting| #going through the Painting.all array and pulling out the price of each painting
      total = total + painting.price #adding the price to the total
    end 
    total
  end 

end
