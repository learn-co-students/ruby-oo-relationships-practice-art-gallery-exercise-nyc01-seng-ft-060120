require_relative '../config/environment.rb'

max = Artist.new("Max", 4)
sam = Artist.new("Sam", 2)
amanda = Artist.new("Amanda", 3)
jennifer = Artist.new("Jennifer", 12)

gallery_one = Gallery.new("MOMA", "New York City")
gallery_two = Gallery.new("CIoA", "Chicago")
gallery_three = Gallery.new("The Tate", "London")

max.create_painting("Painting One", 13000, gallery_three)
max.create_painting("Painting Two", 120000, gallery_one)
sam.create_painting("Painting Three", 1200, gallery_two)
amanda.create_painting("Painting Four", 124500, gallery_one)
jennifer.create_painting("Painting Five", 124500, gallery_one)

max.paintings
max.galleries
max.cities
Artist.all
Artist.total_experience
Artist.most_prolific

Painting.all
Painting.total_price

gallery_one.paintings
gallery_one.artists
gallery_one.artist_names
gallery_one.most_expensive_painting
Gallery.all

binding.pry

puts "Bob Ross rules."
