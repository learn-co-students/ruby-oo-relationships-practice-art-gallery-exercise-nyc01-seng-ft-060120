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
