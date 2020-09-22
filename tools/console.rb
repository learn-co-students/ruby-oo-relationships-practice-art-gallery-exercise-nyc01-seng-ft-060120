require_relative '../config/environment.rb'

a1 = Artist.new("Picasso", 2)
a2 = Artist.new("Monet", 20)
a3 = Artist.new("Ross", 40)
a4 = Artist.new("Mike", 7)

g1 = Gallery.new("Fancy", "New York")
g2 = Gallery.new("Classy", "New Orleans")
g3 = Gallery.new("The Louvre", "Paris")
g4 = Gallery.new("Night Gallery", "Unknown")


Painting.new("Flowers", 200, a1, g1)
Painting.new("Book", 300, a1, g2)
Painting.new("Ducks", 10000, a2, g3)
Painting.new("Boat", 1000, a2, g4)
a3.create_painting("Fish", 1, g3)
a4.create_painting("Two dogs on a boat", 55, g2)


binding.pry

puts "Bob Ross rules."
