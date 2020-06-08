require_relative '../config/environment.rb'



adam = Artist.new("adam", 10)
james = Artist.new("james", 1)
moma = Gallery.new("moma", "NYC")
reservoir = Painting.new("Reservoir", 2500, adam, moma)
babble = Painting.new("Babble", 2500, james, moma)
apple = Painting.new("Apple", 2500, james, moma)


binding.pry

puts "Bob Ross rules."

