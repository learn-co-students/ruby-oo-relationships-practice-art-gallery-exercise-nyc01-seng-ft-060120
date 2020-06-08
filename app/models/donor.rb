class Donor
  @@all = []
  attr_reader :name, :amount

  def initialize(name, amount)
    @name = name
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    Artist.all.select { |artist| artist.donor == self }.map{ |artist| artist.name }.uniq
  end
  
end