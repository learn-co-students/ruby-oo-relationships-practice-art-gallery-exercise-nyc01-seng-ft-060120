require_relative './models/artist.rb'
require_relative './models/gallery.rb'
require_relative './models/painting.rb'

a=Artist.new("bob", 2)
b=Artist.new("joe", 5)
c=Artist.new("sam", 10)
p a 
p b 
p c
p Artist.all
p Artist.total_experience
d=Gallery.new("Justin", "New_York")
p1=Painting.new("sistine_chapel", 25.00, a, d)

p p1
p a 
p d

p2=Painting.new("fruit_bowl", 20.00, b, d)
p p2
p Painting.all 
p Painting.total_price

p Gallery.all

p d.paintings
p d.artists
p d.artist_names
p d.most_expensive_painting
p b.galleries
p b.cities
f=Gallery.new("Tom", "Brooklyn")
p Artist.most_prolific
p3=a.create_painting("dancing_mice", 15.00, f)
p p3