require 'pry'
class Painting #joiner class 

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery 
    @@all << self 
  end

  def self.all
    @@all
  end 

  def painting_total_price #returns total price of all paintings 
    Painting.all.map(&:price).sum #array.map(&:method)
      #painting.all = array | iterate through | calling price reader method | summing those 
  end
    
    
end
