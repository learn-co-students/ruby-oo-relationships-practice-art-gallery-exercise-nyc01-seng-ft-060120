require_relative '../config/environment.rb'




gallery1 = Gallery.new("Moma", "NYC")
gallery2 = Gallery.new("Louvre", "Paris")
gallery3 = Gallery.new("Uffizi", "Florence")

artist1 = Artist.new("Da Vinci", 150)
artist2 = Artist.new("Botticelli", 5)
artist3 = Artist.new("Donatello", 25)

painting1 = Painting.new("Mona Lisa", 1250, artist1, gallery3)
painting2 = Painting.new("Aphrodite", 4500, artist1, gallery1)
painting3 = Painting.new("David", 5600, artist3, gallery1)


binding.pry

puts "Bob Ross rules."

