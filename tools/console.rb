require_relative '../config/environment.rb'

class Painting

    attr_accessor :title, :price, :gallery
    attr_reader :artist
  
    @@all = []
  
    def initialize(hash)
        @title = hash[:title]
        @price = hash[:price]
        @artist = hash[:artist]
        @gallery = hash[:gallery]
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
  

artist1 = Artist.new({name: "Johann", years_experience: 10, donor: "Sam"})
artist2 = Artist.new({name: "Jamil", years_experience: 5, donor: "Bill"})

painting1 = Painting.new({title: "Art", price: 100, artist: "Johann", gallery: "Louvre"})
painting2 = Painting.new({title: "Ugly", price: 1000, artist: "Johann", gallery: "Louvre"})
painting3 = Painting.new({title: "Smart", price: 1000, artist: "Jamil", gallery: "MET"})

gallery1 = Gallery.new({gallery: "Louvre", city: "Paris"})
gallery2 = Gallery.new({gallery: "MET", city: "NYC"})

donor1 = Donor.new({name: "Bill", amount: 235})
donor2 = Donor.new({name: "Sam", amount: 196})

binding.pry

puts "Bob Ross rules."