require "./artist"
require "./painting"
require "./gallery"
require "pry"

picasso = Artist.new("Pablo Picasso")
davinci = Artist.new("Leonardo DaVinci")
mich = Artist.new("Michelangelo di Lodovico Buonarroti Simoni")
vangogh = Artist.new("Vincent van Gogh")

louvre = Gallery.new("The Louvre", "Paris")
met = Gallery.new("Metropolitan Museum of Art", "NYC")
brit = Gallery.new("British Museum", "England")

guitarist = Painting.new("The Old Guitarist", met, picasso)
guernica = Painting.new("Guernica", met, picasso)
weep = Painting.new("The Weeping Woman", met, picasso)
mona = Painting.new("Mona Lisa", louvre, davinci)
last_supper = Painting.new("The Last Supper", louvre, davinci)
vitruvian = Painting.new("Vitruvian Man", louvre, davinci)
sistine = Painting.new("Sistine Chapel", louvre, mich)
david = Painting.new("David", brit, mich)
adam = Painting.new("The Creation Of Adam", brit, mich)
starry = Painting.new("Starry Night", brit, vangogh)
yellow = Painting.new("The Yellow House", brit, vangogh)
portrait = Painting.new("Self Portrait", brit, vangogh)



binding.pry
true
