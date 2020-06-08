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
