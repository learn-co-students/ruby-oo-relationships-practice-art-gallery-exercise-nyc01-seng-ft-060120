require 'pry'
require_relative './artist.rb'
require_relative './gallery.rb'


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
    price_array = Painting.all.map{|painting_obj| painting_obj.price}
      price_array.inject(0){|sum,i| sum + i}
  end

end

davinci = Artist.new("Leonardo Da Vinci", 34)
picasso = Artist.new("Pablo Picasso", 25)
turner = Artist.new("William Turner", 12)

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