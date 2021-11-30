require "open-uri"
puts "/!\\ DESTROYING EVERYTHING /!\\ "
Genre.destroy_all
Artist.destroy_all
Vinyl.destroy_all

puts "Creating seeds ..."
puts "[GENRES] ..."

rock = Genre.create(name: "rock")
electro = Genre.create(name: "electro")
jazz = Genre.create(name: "jazz")
rap = Genre.create(name: "rap")

puts "[ARTISTS] ..."

eminem = Artist.create(name: "Eminem")
muse = Artist.create(name: "Muse")
gorillaz = Artist.create(name: "Gorillaz")
nto = Artist.create(name: "N'to")
miles_davis = Artist.create(name: "Miles Davis")

puts "[IMAGES] ..."
file_black_holes_and_revelation = URI.open("http://1.bp.blogspot.com/_ReWuEqRBpBE/TOPEy3GDCQI/AAAAAAAACp8/W0eNG8B9J8k/s1600/Muse+-+Black+Holes+and+Revelations.jpg")
file_the_slim_shady_lp = URI.open("http://vignette2.wikia.nocookie.net/music/images/7/7e/Slim_shady_front.jpg/revision/latest?cb=20131017022705")
file_the_slim_shady_lp = URI.open("https://media.senscritique.com/media/000004802973/source_big/Demon_Days.jpg")


puts "[VINYLS] ..."

black_holes_and_revelation = Vinyl.create(title: "BLACK HOLES & REVELATIONS", year: 2006, genre: rock, artist: muse, description: "Black Holes and Revelations is therefore Muse's fourth album, released on July 3, 2006. This new opus is influenced by electro and the band's style is enriched with new sounds. It includes eleven songs.")
black_holes_and_revelation.photo.attach(io: file_black_holes_and_revelation, filename: 'black_holes_and_revelation.png', content_type: 'image/jpg')

the_slim_shady_lp = Vinyl.create(title: "The Slim Shady LP", year: 1999, genre: rap, artist: eminem, description: "The main theme of the album is the alter ego of the rapper he created in The Slim Shady EP, Slim Shady.")
the_slim_shady_lp.photo.attach(io: file_black_holes_and_revelation, filename: 'the_slim_shady_lp.jng', content_type: 'image/jpg')

the_slim_shady_lp = Vinyl.create(title: "The Slim Shady LP", year: 1999, genre: rap, artist: eminem, description: "The main theme of the album is the alter ego of the rapper he created in The Slim Shady EP, Slim Shady.")
the_slim_shady_lp.photo.attach(io: file_black_holes_and_revelation, filename: 'the_slim_shady_lp.jng', content_type: 'image/jpg')


# tracks, tags, vinyls in collec., user, favorites.
puts "Seeds created !"
