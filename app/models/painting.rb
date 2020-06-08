class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(artist, title, price, gallery)
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.map do |painting|
      painting.price
    end.sum
  end



end
