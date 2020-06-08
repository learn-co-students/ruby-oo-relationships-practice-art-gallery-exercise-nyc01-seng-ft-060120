require 'pry'
require_relative './artist.rb'
require_relative './gallery.rb'
require_relative './donor.rb'


class Painting

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

  def self.total_price
    Painting.all.inject(0){|sum,painting_obj| sum + painting_obj.price}
  end

end


sally = Donor.new("Sally",20)
aria = Donor.new("Aria",15)
jerry = Donor.new("Jerry",10)

davinci = Artist.new("Leonardo Da Vinci", 3,sally,aria)
picasso = Artist.new("Pablo Picasso", 25,aria)
turner = Artist.new("William Turner", 12,aria,sally,jerry)

haven = Gallery.new("Haven Gallery", "San Francisco")
skylight = Gallery.new("Skylight Gallery","Dallas")
uptown = Gallery.new("Uptown Gallery","New York")

mona_lisa = Painting.new("Mona Lisa",200,davinci,haven)
flower = Painting.new("Flowers",50,davinci,haven)
lady = Painting.new("Lady in White",150,picasso,uptown)
ships = Painting.new("Big Ships",100,turner,skylight)
angels = Painting.new("Angels with God",500,davinci,uptown)
cubes = Painting.new("Cubism", 300,picasso,skylight)
dawn = Painting.new("Dawn Rising",250,turner,haven)




binding.pry

    # Painting.all-->Returns an array of all the paintings

    # Painting.total_price-->Returns an integer that is the total price of all paintings