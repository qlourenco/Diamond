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

puts "[USERS] ..."
emile = User.create(email: "emile@gmail.com", first_name: "Emile", last_name: "Berliner", password: "secret")

puts "[GENRES] ..."
rock = Genre.create(name: "Rock")
jazz = Genre.create(name: "Jazz")
hip_hop = Genre.create(name: "Hip-hop")
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
nirvana = Artist.create(name: "Nirvana")
louis_armstrong = Artist.create(name: "Louis Armstrong")
alpha_wann = Artist.create(name: "Alpha Wann")
nekfeu = Artist.create(name: "Nekfeu")
degiheugi = Artist.create(name: "Degiheugi")
nas = Artist.create(name: "Nas")
chill_bump = Artist.create(name: "Chill Bump")

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
file_nevermind = URI.open("https://img.discogs.com/UoDAnoi3Cbp_JvOrz4CRgZBBSfg=/fit-in/600x592/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-367084-1263095553.jpeg.jpg")
nevermind = Vinyl.create(title: "Nevermind", year: 1991, genre: rock, artist: nirvana, tracklist: )
nevermind.photo.attach(io: file_nevermind, filename: 'Nevermind.jpg', content_type: 'image/jpg')
# 8
file_ziggy_stardust_the_motion_picture = URI.open("https://img.discogs.com/96-PrNjSQQbcLF3G3miB4tSeGww=/fit-in/600x586/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2198791-1271862994.jpeg.jpg")
ziggy_stardust_the_motion_picture = Vinyl.create(title: "Ziggy Stardust - The Motion Picture", year: 1983, genre: rock, artist: david_bowie, tracklist: )
ziggy_stardust_the_motion_picture.photo.attach(io: file_ziggy_stardust_the_motion_picture, filename: 'ziggy_stardust_the_motion_picture.jpg', content_type: 'image/jpg')
# JAZZ
# 9
file_star_people = URI.open("https://img.discogs.com/U3XMHnCzf7KHVypeEjlS5ErKKS8=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4341911-1362266949-9525.jpeg.jpg")
star_people = Vinyl.create(title: "Star People", year: 1983, genre: jazz, artist: miles_davis, tracklist: )
star_people.photo.attach(io: file_star_people, filename: 'star_people.jpg', content_type: 'image/jpg')
# 10
file_blue_moods = URI.open("https://img.discogs.com/xQi-m2OJ6jE_k9PdTckQfFJugII=/fit-in/450x456/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4165507-1357431932-6368.jpeg.jpg")
blue_moods = Vinyl.create(title: "Blue Moods", year: 1955, genre: jazz, artist: miles_davis, tracklist: )
blue_moods.photo.attach(io: file_blue_moods, filename: 'blue_moods.jpg', content_type: 'image/jpg')
# 11
file_sings_the_blues = URI.open("https://img.discogs.com/Vso1v-YjvNMaU2Hr2lWg9qSPIe0=/fit-in/600x587/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-3193867-1369282457-6367.jpeg.jpg")
sings_the_blues = Vinyl.create(title: "Sings The Blues", year: 1954, genre: jazz, artist: louis_armstrong, tracklist: )
sings_the_blues.photo.attach(io: file_sings_the_blues, filename: 'sings_the_blues.jpg', content_type: 'image/jpg')
# 12
file_satchmo_sings = URI.open("https://img.discogs.com/nstZZQeLN-UlFV4twApR4mJij9s=/fit-in/399x392/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4049807-1353567383-5315.jpeg.jpg")
satchmo_sings = Vinyl.create(title: "Satchmo Sings", year: 1955, genre: jazz, artist: louis_armstrong, tracklist: )
satchmo_sings.photo.attach(io: file_satchmo_sings, filename: 'satchmo_sings.jpg', content_type: 'image/jpg')
# 13
file_at_the_crescendo_vol_2 = URI.open("https://img.discogs.com/HRgYqLvZyKRa7Sz28VMPSPLvc6M=/fit-in/500x493/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-3102995-1380468736-9266.jpeg.jpg")
at_the_crescendo_vol_2 = Vinyl.create(title: "At The Crescendo Vol. 2", year: 1955, genre: jazz, artist: louis_armstrong, tracklist: )
at_the_crescendo_vol_2.photo.attach(io: file_at_the_crescendo_vol_2, filename: 'at_the_crescendo_vol_2.jpg', content_type: 'image/jpg')
# hip_hop
# 14
file_the_slim_shady_lp = URI.open("https://img.discogs.com/qg3QA6AT0-BSmLhCf7vKFd_gDvQ=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-186451-1283620752.jpeg.jpg")
the_slim_shady_lp = Vinyl.create(title: "The Slim Shady LP", year: 1999, genre: hip_hop, artist: eminem, tracklist: )
the_slim_shady_lp.photo.attach(io: file_the_slim_shady_lp, filename: 'the_slim_shady_lp.jpg', content_type: 'image/jpg')
# 15
file_the_eminem_show = URI.open("https://img.discogs.com/816K4xdMoDHjjbmJ2i49ZK1Yo5A=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1301557-1636296964-3346.jpeg.jpg")
the_eminem_show = Vinyl.create(title: "The Eminem Show", year: 2002, genre: hip_hop, artist: eminem, tracklist: )
the_eminem_show.photo.attach(io: file_the_eminem_show, filename: 'the_eminem_show.jpg', content_type: 'image/jpg')
# 16
file_ulma_une_main_lave_l_autre = URI.open("https://img.discogs.com/AHdsm-gR-YmEnYYzqoIE0Nki658=/fit-in/600x535/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12570010-1587952319-7615.jpeg.jpg")
ulma_une_main_lave_l_autre = Vinyl.create(title: "UMLA - Une Main Lave L'Autre", year: 2018, genre: hip_hop, artist: alpha_wann, tracklist: )
ulma_une_main_lave_l_autre.photo.attach(io: file_ulma_une_main_lave_l_autre, filename: 'file_ulma_une_main_lave_l_autre.jpg', content_type: 'image/jpg')
# 17
file_feu = URI.open("https://img.discogs.com/1wtUHb-r4Bpk4Q2RWzOBZ5X-7H0=/fit-in/600x598/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7353442-1544217643-3355.jpeg.jpg")
feu = Vinyl.create(title: "Feu", year: 2015, genre: hip_hop, artist: nekfeu, tracklist: )
feu.photo.attach(io: file_feu, filename: 'feu.jpg', content_type: 'image/jpg')
# ELECTRONIC
# 18
file_t_es_triste = URI.open("https://img.discogs.com/f8AfI6p3nevqwW8c6BnsHSFNEj0=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7336087-1439203049-5316.jpeg.jpg")
t_es_triste = Vinyl.create(title: "T'Es Triste", year: 2001, genre: electronic, artist: nto, tracklist: )
t_es_triste.photo.attach(io: file_t_es_triste, filename: 't_es_triste.jpg', content_type: 'image/jpg')
# 19
file_endless_smile = URI.open("https://img.discogs.com/-SqmIQXVj6enNZPE4RwRke4FlfE=/fit-in/600x577/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7028995-1432036497-3141.jpeg.jpg")
endless_smile = Vinyl.create(title: "Endless Smile", year: 2015, genre: electronic, artist: degiheugi, tracklist: )
endless_smile.photo.attach(io: file_endless_smile, filename: 'endless_smile.jpg', content_type: 'image/jpg')
# POP
# 20
file_l_autre = URI.open("https://img.discogs.com/lDGOB2SES4g3YCIKkIZRvqz57xs=/fit-in/600x604/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-346379-1626698752-4074.jpeg.jpg")
l_autre = Vinyl.create(title: "L'Autre...", year: 1991, genre: pop, artist: mylene_farmer, tracklist: )
l_autre.photo.attach(io: file_l_autre, filename: 'l_autre.jpg', content_type: 'image/jpg')
# WISH LIST
# 21
file_bagatelle = URI.open("https://img.discogs.com/mEEWK47FjYW8ieGl5afwB6Bngug=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-11025967-1508493469-6669.jpeg.jpg")
bagatelle = Vinyl.create(title: "Bagatelle", year: 2017, genre: electronic, artist: degiheugi, tracklist: )
bagatelle.photo.attach(io: file_bagatelle, filename: 'bagatelle.jpg', content_type: 'image/jpg')
# 22
file_spacemonkeyz = URI.open("https://img.discogs.com/tMfWd5Wfv30K1TZz4edY8GXlSwA=/462x462/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-91131-1377071348-8311.jpeg.jpg")
spacemonkeyz = Vinyl.create(title: "Spacemonkeyz", year: 2001, genre: rock, artist: gorillaz, tracklist: )
spacemonkeyz.photo.attach(io: file_spacemonkeyz, filename: 'spacemonkeyz.jpg', content_type: 'image/jpg')
# 23
file_the_now_now = URI.open("https://img.discogs.com/SoJRdzeZLiwdqkV3Wn_BT91ED1w=/fit-in/600x605/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12186161-1530250320-5350.jpeg.jpg")
the_now_now = Vinyl.create(title: "The Now Now", year: 2018, genre: rock, artist: gorillaz, tracklist: )
the_now_now.photo.attach(io: file_the_now_now, filename: 'the_now_now.jpg', content_type: 'image/jpg')
# 24
file_it_was_written = URI.open("https://img.discogs.com/S0S-X9zYkqRZJew5dLAw6M6tPN8=/fit-in/600x576/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-298151-1383313371-2642.jpeg.jpg")
it_was_written = Vinyl.create(title: "It Was Written", year: 1996, genre: hip_hop, artist: nas, tracklist: )
it_was_written.photo.attach(io: file_it_was_written, filename: 'it_was_written.jpg', content_type: 'image/jpg')
# 25
file_ego_trip = URI.open("https://img.discogs.com/wrbVtcKyofuI_1t_uso-L1OCTZM=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-6297444-1416131045-9851.jpeg.jpg")
ego_trip = Vinyl.create(title: "Ego Trip", year: 2014, genre: hip_hop, artist: chill_bump, tracklist: )
ego_trip.photo.attach(io: file_ego_trip, filename: 'ego_trip.jpg', content_type: 'image/jpg')


puts "[FAVORITES] ..."
Favorite.create(user: emile, vinyl: bagatelle)
Favorite.create(user: emile, vinyl: spacemonkeyz)
Favorite.create(user: emile, vinyl: the_now_now)
Favorite.create(user: emile, vinyl: it_was_written)
Favorite.create(user: emile, vinyl: ego_trip)

puts "[TAGS] ..."
TAGS = ["1950", "1960", "1970", "1980", "1990", "2000", "2010", "2020", "Dirthdays", "Summer", "Winter", "Spring", "Autumn", "Favorites", "Travel", "Calm", "Party", "Family", "Bad mood", "Happy", "Other", "To sell", "Dj", "Dance", "Sing", "Beats", "Live", "Band", "Girl", "Top", "Hit", "Popular", "Rave", "Bass", "Drum", "Cool", "French", "German", "Hispanic", "English", "US", "Russian", "Oriental", "Asian", "African", "European", "American", "Tribal", "Chill", "Hard", "Sport", "Nostalgia", "Childhood", "Rain", "Training", "Studying"]

puts "[TRACKS] ..."
# TODO: Tracks + add in Vinyl
puts "[USER VINYLS] ..."
UserVinyl.create(user: emile, vinyl: black_holes_and_revelation)
UserVinyl.create(user: emile, vinyl: demon_days)
UserVinyl.create(user: emile, vinyl: the_dark_side_of_the_moon)
UserVinyl.create(user: emile, vinyl: atom_heart_mother)
UserVinyl.create(user: emile, vinyl: wish_you_were_here)
UserVinyl.create(user: emile, vinyl: hunky_dory)
UserVinyl.create(user: emile, vinyl: nevermind)
UserVinyl.create(user: emile, vinyl: ziggy_stardust_the_motion_picture)
UserVinyl.create(user: emile, vinyl: star_people)
UserVinyl.create(user: emile, vinyl: blue_moods)
UserVinyl.create(user: emile, vinyl: sings_the_blues)
UserVinyl.create(user: emile, vinyl: satchmo_sings)
UserVinyl.create(user: emile, vinyl: at_the_crescendo_vol_2)
UserVinyl.create(user: emile, vinyl: the_slim_shady_lp)
UserVinyl.create(user: emile, vinyl: the_eminem_show)
UserVinyl.create(user: emile, vinyl: ulma_une_main_lave_l_autre)
UserVinyl.create(user: emile, vinyl: feu)
UserVinyl.create(user: emile, vinyl: t_es_triste)
UserVinyl.create(user: emile, vinyl: endless_smile)
UserVinyl.create(user: emile, vinyl: l_autre)

puts "[VINYL TAGS] ..."
# TODO: Add tags on UserVinyl

puts "Seeds created !"
