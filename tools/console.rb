require_relative '../config/environment.rb'

donor1 = Donor.new("bill gates", 3000)
donor2 = Donor.new("melinda gates", 4000)
donor3 = Donor.new("bill and melinda gates", 1000)

artist1 = Artist.new("george bush", 3, donor1)
artist2 = Artist.new("tom", 1, donor1)
artist3 = Artist.new("beth", 2, donor1)
artist4 = Artist.new("davinci", 30, donor3)
artist5 = Artist.new("apple paltrow", 4, donor2)
artist6 = Artist.new("elon musk", 10, donor2)

gallery1 = Gallery.new("MCAD", "Minneapolis")
gallery2 = Gallery.new("SAIC", "Chicago")
gallery3 = Gallery.new("Metropolitan", "NYC")
gallery4 = Gallery.new("MAC","Milwaukee")

painting1 = Painting.new("untitled", 3000, artist1, gallery1)
painting1 = Painting.new("pancakes", 3200, artist1, gallery1)
painting2 = Painting.new("feet", 100, artist2, gallery2)
painting3 = Painting.new("apples and bananas", 250000, artist3, gallery3)
painting4 = Painting.new("sleepy", 250, artist4, gallery4)
painting5 = Painting.new("is this the end?", 14, artist5, gallery1)
painting6 = Painting.new("060220", 100, artist6, gallery2)
painting7 = Painting.new("Impossible", 1500, artist1, gallery2)
painting7 = Painting.new("Meatheads", 660, artist4, gallery4)

Pry.start