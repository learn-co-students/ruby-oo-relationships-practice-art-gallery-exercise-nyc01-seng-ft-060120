require 'pry'
require_relative './artist.rb'
require_relative './gallery.rb'
require_relative './painting.rb'


#artist1=Artist.new(name:"picasso", years_experience:"50")
#gallery1=Gallery.new(name: "chelsea", city: "new york")

artist1=Artist.new("picasso", 50)
artist2=Artist.new("davinci", 60)
gallery1=Gallery.new("chelsea","new york")
painting1=Painting.new("dance", 100, artist1, gallery1)
painting2=Painting.new("sleep", 200, artist2, gallery1)
painting3=Painting.new("wake", 300, artist1, gallery1)

binding.pry

