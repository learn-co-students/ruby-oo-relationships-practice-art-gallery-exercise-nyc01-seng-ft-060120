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
    sum = 0
    all_prices = @@all.map do |painting|
      painting.price
    end
    all_prices.map do |num|
      sum +=num
    end
    sum
  end



end
