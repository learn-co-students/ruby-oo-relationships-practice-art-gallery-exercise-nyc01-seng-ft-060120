require_relative '../config/environment.rb'

class Painting
    
    attr_accessor :title, :price, :gallery
    attr_reader :artist
  
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
  
    def self.total_price
      @@all.sum do |painting|
        painting.price
      end
    end
  
  end
  

artist1 = Artist.new("Johann", 10)
artist2 = Artist.new("Jamil", 5)

painting1 = Painting.new("Art", 100, "Johann", "Louvre")
painting2 = Painting.new("Ugly", 1000, "Johann", "Louvre")
painting3 = Painting.new("Smart", 1000, "Jamil", "MET")

gallery1 = Gallery.new("Louvre", "Paris")
gallery2 = Gallery.new("MET", "NYC")


binding.pry

puts "Bob Ross rules."
