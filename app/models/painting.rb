class Painting

  attr_reader :title, :price

  @@all = []
  @@price=[]
  
  def initialize(title, price)
    @title = title
    @price = price
    @@all<<self
    @@price<<@price
  end
  def all
    @@all 
  end
  def total_price
    sum=0
    years_experience.each{|b| sum+=b}
  end 


end

# I used stack overflow to help me get the total price. Here is the link: https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
