require "open-uri"
puts "/!\\ DESTROYING EVERYTHING /!\\ "
Genre.destroy_all
Artist.destroy_all
Vinyl.destroy_all
Favorite.destroy_all
Tag.destroy_all
Track.destroy_all
UserVinyl.destroy_all
User.destroy_all
VinylTag.destroy_all

puts "Creating seeds ..."

puts "[GENRES] ..."
rock = Genre.create(name: "Rock")
jazz = Genre.create(name: "Jazz")
rap = Genre.create(name: "Rap")
electronic = Genre.create(name: "Electronic")
pop = Genre.create(name: "Pop")

puts "[ARTISTS] ..."
eminem = Artist.create(name: "Eminem")
muse = Artist.create(name: "Muse")
gorillaz = Artist.create(name: "Gorillaz")
nto = Artist.create(name: "N'to")
miles_davis = Artist.create(name: "Miles Davis")
mylene_farmer = Artist.create(name: "Mylene Farmer")
pink_floyd = Artist.create(name: "Pink Floyd")
david_bowie = Artist.create(name: "David Bowie")

puts "[IMAGES] ..."
puts "[VINYLS] ..."
# ROCK
# 1
file_black_holes_and_revelation = URI.open("https://img.discogs.com/BMWu5yQg4d4QZowrLALt2wtwTyU=/fit-in/600x524/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-725292-1203342175.jpeg.jpg")
black_holes_and_revelation = Vinyl.create(title: "BLACK HOLES & REVELATIONS", year: 2006, genre: rock, artist: muse, tracklist: )
black_holes_and_revelation.photo.attach(io: file_black_holes_and_revelation, filename: 'black_holes_and_revelation.png', content_type: 'image/jpg')
# 2
file_demon_days = URI.open("https://img.discogs.com/yW9zh7xos1zPJds9Vu_zI0TfCoI=/fit-in/394x400/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-474703-1457294216-3965.jpeg.jpg")
demon_days = Vinyl.create(title: "Demon Days", year: 2005, genre: rock, artist: gorillaz, tracklist: )
demon_days.photo.attach(io: file_demon_days, filename: 'demon_days.jpg', content_type: 'image/jpg')
# 3
file_the_dark_side_of_the_moon = URI.open("https://img.discogs.com/jKTmuxcsYe2TqcahU3QqVXJLssU=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1873013-1471100381-3022.jpeg.jpg")
the_dark_side_of_the_moon = Vinyl.create(title: "The Dark Side Of The Moon", year: 1973, genre: rock, artist: pink_floyd, tracklist: )
the_dark_side_of_the_moon.photo.attach(io: file_the_dark_side_of_the_moon, filename: 'the_dark_side_of_the_moon.jpg', content_type: 'image/jpg')
# 4
file_atom_heart_mother = URI.open("https://img.discogs.com/lVSWqAipy64ZCi3zyS2b8tlMo2w=/fit-in/600x588/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2644617-1294700326.jpeg.jpg")
atom_heart_mother = Vinyl.create(title: "Atom Heart Mother", year: 1970, genre: rock, artist: pink_floyd, tracklist: )
atom_heart_mother.photo.attach(io: file_atom_heart_mother, filename: 'atom_heart_mother.jpg', content_type: 'image/jpg')
# 5
file_wish_you_were_here = URI.open("https://img.discogs.com/49xkF6COV5H3B1qYvOHHciY6brQ=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-463597-1560369536-8302.jpeg.jpg")
wish_you_were_here = Vinyl.create(title: "Wish You Were Here", year: 1975, genre: rock, artist: pink_floyd, tracklist: )
wish_you_were_here.photo.attach(io: file_wish_you_were_here, filename: 'wish_you_were_here.jpg', content_type: 'image/jpg')
# 6
file_hunky_dory = URI.open("https://img.discogs.com/I_y9Iqw2KNOyae_b_qxR4uov3ZU=/fit-in/390x400/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-422921-1352848584-4544.jpeg.jpg")
hunky_dory = Vinyl.create(title: "Hunky Dory", year: 1971, genre: rock, artist: david_bowie, tracklist: )
hunky_dory.photo.attach(io: file_hunky_dory, filename: 'hunky_dory.jpg', content_type: 'image/jpg')
# 7

# 8
# JAZZ
# 9
file_star_people = URI.open("https://img.discogs.com/U3XMHnCzf7KHVypeEjlS5ErKKS8=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4341911-1362266949-9525.jpeg.jpg")
star_people = Vinyl.create(title: "Star People", year: 1983, genre: jazz, artist: miles_davis, tracklist: )
star_people.photo.attach(io: file_star_people, filename: 'star_people.jpg', content_type: 'image/jpg')
# 10
# 11
# 12
# 13
# Rap
# 14
file_the_slim_shady_lp = URI.open("https://img.discogs.com/qg3QA6AT0-BSmLhCf7vKFd_gDvQ=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-186451-1283620752.jpeg.jpg")
the_slim_shady_lp = Vinyl.create(title: "The Slim Shady LP", year: 1999, genre: rap, artist: eminem, tracklist: )
the_slim_shady_lp.photo.attach(io: file_the_slim_shady_lp, filename: 'the_slim_shady_lp.jpg', content_type: 'image/jpg')
# 15
# 16
# 17
# ELECTRONIC
# 18
file_t_es_triste = URI.open("https://img.discogs.com/f8AfI6p3nevqwW8c6BnsHSFNEj0=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7336087-1439203049-5316.jpeg.jpg")
t_es_triste = Vinyl.create(title: "T'Es Triste", year: 2001, genre: electronic, artist: nto, tracklist: )
t_es_triste.photo.attach(io: file_t_es_triste, filename: 't_es_triste.jpg', content_type: 'image/jpg')
# 19
# POP
# 20
file_l_autre = URI.open("https://img.discogs.com/lDGOB2SES4g3YCIKkIZRvqz57xs=/fit-in/600x604/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-346379-1626698752-4074.jpeg.jpg")
l_autre = Vinyl.create(title: "L'Autre...", year: 1991, genre: pop, artist: mylene_farmer, tracklist: )
l_autre.photo.attach(io: file_l_autre, filename: 'l_autre.jpg', content_type: 'image/jpg')
# WISH LIST
# 21
# 22
# 23
# 24
# 25
#
#
#
#
#

puts "[FAVORITES] ..."

puts "[TAGS] ..."

puts "[TRACKS] ..."

puts "[USER VINYLS] ..."

puts "[USERS] ..."


puts "[VINYL TAGS] ..."

# tracks, tags, vinyls in collec., user, favorites.
puts "Seeds created !"
