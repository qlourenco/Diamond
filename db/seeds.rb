# require 'open-uri'
# require 'json'

# puts "/!\\ DESTROYING EVERYTHING /!\\ "
# VinylTag.destroy_all
# UserVinyl.destroy_all
# Track.destroy_all
# Tag.destroy_all
# Favorite.destroy_all
# Vinyl.destroy_all
# Artist.destroy_all
# Genre.destroy_all
# User.destroy_all

# puts "Creating seeds ..."

# puts "[USERS] ..."
# emile = User.create(email: "emile@gmail.com", first_name: "Emile", last_name: "Berliner", password: "secret")

# puts "[GENRES] ..."
# rock = Genre.create(name: "Rock")
# jazz = Genre.create(name: "Jazz")
# hip_hop = Genre.create(name: "Hip-hop")
# electronic = Genre.create(name: "Electronic")
# pop = Genre.create(name: "Pop")

# puts "[ARTISTS] ..."
# eminem = Artist.create(name: "Eminem")
# muse = Artist.create(name: "Muse")
# gorillaz = Artist.create(name: "Gorillaz")
# nto = Artist.create(name: "N'to")
# miles_davis = Artist.create(name: "Miles Davis")
# mylene_farmer = Artist.create(name: "Mylene Farmer")
# pink_floyd = Artist.create(name: "Pink Floyd")
# david_bowie = Artist.create(name: "David Bowie")
# nirvana = Artist.create(name: "Nirvana")
# louis_armstrong = Artist.create(name: "Louis Armstrong")
# alpha_wann = Artist.create(name: "Alpha Wann")
# nekfeu = Artist.create(name: "Nekfeu")
# degiheugi = Artist.create(name: "Degiheugi")
# nas = Artist.create(name: "Nas")
# chill_bump = Artist.create(name: "Chill Bump")

# puts "[VINYLS] ..."
# # ROCK
# # 1
# file_black_holes_and_revelation = "https://img.discogs.com/BMWu5yQg4d4QZowrLALt2wtwTyU=/fit-in/600x524/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-725292-1203342175.jpeg.jpg"
# black_holes_and_revelation = Vinyl.create(title: "Black Holes & Revelations", release_date: "2006", genre: rock, artist: muse, cover_url: file_black_holes_and_revelation)

# # 2
# file_demon_days = "https://img.discogs.com/yW9zh7xos1zPJds9Vu_zI0TfCoI=/fit-in/394x400/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-474703-1457294216-3965.jpeg.jpg"
# demon_days = Vinyl.create(title: "Demon Days", release_date: "2005", genre: rock, artist: gorillaz, cover_url: file_demon_days)

# # 3
# file_the_dark_side_of_the_moon = "https://img.discogs.com/jKTmuxcsYe2TqcahU3QqVXJLssU=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1873013-1471100381-3022.jpeg.jpg"
# the_dark_side_of_the_moon = Vinyl.create(title: "The Dark Side Of The Moon", release_date: "1973", genre: rock, artist: pink_floyd, cover_url: file_the_dark_side_of_the_moon)

# # 4
# file_atom_heart_mother = "https://img.discogs.com/lVSWqAipy64ZCi3zyS2b8tlMo2w=/fit-in/600x588/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2644617-1294700326.jpeg.jpg"
# atom_heart_mother = Vinyl.create(title: "Atom Heart Mother", release_date: "1970", genre: rock, artist: pink_floyd, cover_url: file_atom_heart_mother)

# # 5
# file_wish_you_were_here = "https://img.discogs.com/49xkF6COV5H3B1qYvOHHciY6brQ=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-463597-1560369536-8302.jpeg.jpg"
# wish_you_were_here = Vinyl.create(title: "Wish You Were Here", release_date: "1975", genre: rock, artist: pink_floyd, cover_url: file_wish_you_were_here)

# # 6
# file_hunky_dory = "https://img.discogs.com/I_y9Iqw2KNOyae_b_qxR4uov3ZU=/fit-in/390x400/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-422921-1352848584-4544.jpeg.jpg"
# hunky_dory = Vinyl.create(title: "Hunky Dory", release_date: "1971", genre: rock, artist: david_bowie, cover_url: file_hunky_dory)

# # 7
# file_nevermind = "https://img.discogs.com/UoDAnoi3Cbp_JvOrz4CRgZBBSfg=/fit-in/600x592/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-367084-1263095553.jpeg.jpg"
# nevermind = Vinyl.create(title: "Nevermind", release_date: "1991", genre: rock, artist: nirvana, cover_url: file_nevermind)

# # 8
# file_ziggy_stardust_the_motion_picture = "https://img.discogs.com/96-PrNjSQQbcLF3G3miB4tSeGww=/fit-in/600x586/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2198791-1271862994.jpeg.jpg"
# ziggy_stardust_the_motion_picture = Vinyl.create(title: "Ziggy Stardust - The Motion Picture", release_date: "1983", genre: rock, artist: david_bowie, cover_url: file_ziggy_stardust_the_motion_picture)

# # JAZZ
# # 9
# file_star_people = "https://img.discogs.com/U3XMHnCzf7KHVypeEjlS5ErKKS8=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4341911-1362266949-9525.jpeg.jpg"
# star_people = Vinyl.create(title: "Star People", release_date: "1983", genre: jazz, artist: miles_davis, cover_url: file_star_people)

# # 10
# file_blue_moods = "https://img.discogs.com/xQi-m2OJ6jE_k9PdTckQfFJugII=/fit-in/450x456/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4165507-1357431932-6368.jpeg.jpg"
# blue_moods = Vinyl.create(title: "Blue Moods", release_date: "1955", genre: jazz, artist: miles_davis, cover_url: file_blue_moods)

# # 11
# file_sings_the_blues = "https://img.discogs.com/Vso1v-YjvNMaU2Hr2lWg9qSPIe0=/fit-in/600x587/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-3193867-1369282457-6367.jpeg.jpg"
# sings_the_blues = Vinyl.create(title: "Sings The Blues", release_date: "1954", genre: jazz, artist: louis_armstrong, cover_url:file_sings_the_blues)

# # 12
# file_satchmo_sings = "https://img.discogs.com/nstZZQeLN-UlFV4twApR4mJij9s=/fit-in/399x392/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4049807-1353567383-5315.jpeg.jpg"
# satchmo_sings = Vinyl.create(title: "Satchmo Sings", release_date: "1955", genre: jazz, artist: louis_armstrong, cover_url: file_satchmo_sings)

# # 13
# file_at_the_crescendo_vol_2 = "https://img.discogs.com/HRgYqLvZyKRa7Sz28VMPSPLvc6M=/fit-in/500x493/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-3102995-1380468736-9266.jpeg.jpg"
# at_the_crescendo_vol_2 = Vinyl.create(title: "At The Crescendo Vol. 2", release_date: "1955", genre: jazz, artist: louis_armstrong, cover_url: file_at_the_crescendo_vol_2)

# # HIPHOP
# # 14
# file_the_slim_shady_lp = "https://img.discogs.com/qg3QA6AT0-BSmLhCf7vKFd_gDvQ=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-186451-1283620752.jpeg.jpg"
# the_slim_shady_lp = Vinyl.create(title: "The Slim Shady LP", release_date: "1999", genre: hip_hop, artist: eminem, cover_url: file_the_slim_shady_lp)

# # 15
# file_the_eminem_show = "https://img.discogs.com/816K4xdMoDHjjbmJ2i49ZK1Yo5A=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1301557-1636296964-3346.jpeg.jpg"
# the_eminem_show = Vinyl.create(title: "The Eminem Show", release_date: "2002", genre: hip_hop, artist: eminem, cover_url: file_the_eminem_show)

# # 16
# file_ulma_une_main_lave_l_autre = "https://img.discogs.com/AHdsm-gR-YmEnYYzqoIE0Nki658=/fit-in/600x535/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12570010-1587952319-7615.jpeg.jpg"
# ulma_une_main_lave_l_autre = Vinyl.create(title: "UMLA - Une Main Lave L'Autre", release_date: "2018", genre: hip_hop, artist: alpha_wann, cover_url: file_ulma_une_main_lave_l_autre)

# # 17
# file_feu = "https://img.discogs.com/1wtUHb-r4Bpk4Q2RWzOBZ5X-7H0=/fit-in/600x598/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7353442-1544217643-3355.jpeg.jpg"
# feu = Vinyl.create(title: "Feu", release_date: "2015", genre: hip_hop, artist: nekfeu, cover_url: file_feu)


# # ELECTRONIC
# # 18
# file_t_es_triste = "https://img.discogs.com/f8AfI6p3nevqwW8c6BnsHSFNEj0=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7336087-1439203049-5316.jpeg.jpg"
# t_es_triste = Vinyl.create(title: "T'Es Triste", release_date: "2001", genre: electronic, artist: nto, cover_url: file_t_es_triste)

# # 19
# file_endless_smile = "https://img.discogs.com/-SqmIQXVj6enNZPE4RwRke4FlfE=/fit-in/600x577/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7028995-1432036497-3141.jpeg.jpg"
# endless_smile = Vinyl.create(title: "Endless Smile Degiheugi", release_date: "2015", genre: electronic, artist: degiheugi, cover_url: file_endless_smile)

# # POP
# # 20
# file_l_autre = "https://img.discogs.com/lDGOB2SES4g3YCIKkIZRvqz57xs=/fit-in/600x604/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-346379-1626698752-4074.jpeg.jpg"
# l_autre = Vinyl.create(title: "L'Autre...", release_date: "1991", genre: pop, artist: mylene_farmer, cover_url: file_l_autre)

# # WISH LIST
# # 21
# file_bagatelle = "https://img.discogs.com/mEEWK47FjYW8ieGl5afwB6Bngug=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-11025967-1508493469-6669.jpeg.jpg"
# bagatelle = Vinyl.create(title: "Bagatelle Degiheugi", release_date: "2017", genre: electronic, artist: degiheugi, cover_url: file_bagatelle)

# # 22
# file_spacemonkeyz = "https://img.discogs.com/tMfWd5Wfv30K1TZz4edY8GXlSwA=/462x462/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-91131-1377071348-8311.jpeg.jpg"
# spacemonkeyz = Vinyl.create(title: "Spacemonkeyz", release_date: "2001", genre: rock, artist: gorillaz, cover_url: file_spacemonkeyz)

# # 23
# file_the_now_now = "https://img.discogs.com/SoJRdzeZLiwdqkV3Wn_BT91ED1w=/fit-in/600x605/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-12186161-1530250320-5350.jpeg.jpg"
# the_now_now = Vinyl.create(title: "The Now Now", release_date: "2018", genre: rock, artist: gorillaz, cover_url: file_the_now_now)

# # 24
# file_it_was_written = "https://img.discogs.com/S0S-X9zYkqRZJew5dLAw6M6tPN8=/fit-in/600x576/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-298151-1383313371-2642.jpeg.jpg"
# it_was_written = Vinyl.create(title: "It Was Written", release_date: "1996", genre: hip_hop, artist: nas, cover_url: file_it_was_written)

# # 25
# file_ego_trip = "https://img.discogs.com/wrbVtcKyofuI_1t_uso-L1OCTZM=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-6297444-1416131045-9851.jpeg.jpg"
# ego_trip = Vinyl.create(title: "Ego Trip", release_date: "2014", genre: hip_hop, artist: chill_bump, cover_url: file_ego_trip)

# puts "[FAVORITES] ..."
# Favorite.create(user: emile, vinyl: bagatelle)
# Favorite.create(user: emile, vinyl: spacemonkeyz)
# Favorite.create(user: emile, vinyl: the_now_now)
# Favorite.create(user: emile, vinyl: it_was_written)
# Favorite.create(user: emile, vinyl: ego_trip)


# puts "[TAGS] ..."
# TAGS = ["1950", "1960", "1970", "1980", "1990", "2000", "2010", "2020", "Summer", "Winter", "Spring", "Autumn", "Favorites", "Travel", "Bad mood", "Happy", "Dance", "Sing", "Beats", "Live", "Rave", "Cool", "French", "German", "Hispanic", "English", "US", "Russian", "Oriental", "Asian", "African", "European", "American", "Chill", "Nostalgia", "Childhood", "Rain", "Training", "Studying"].sort

puts "[TRACKS] ..."
# TODO: Tracks + add in Vinyl
def search_track(vinyl)
  auth_wrapper = Discogs::Wrapper.new('Diamond', user_token: 'RLyIMYkXUJjJzRuzIjCLXvWTXsCkjbYvuubbvhoz')
  search = auth_wrapper.search("#{vinyl.title}", per_page: 10, type: :releases_title)
  master_url = search.results[0]['master_url']
  search_serialized = URI.open(master_url).read
  master = JSON.parse(search_serialized)
  main_release_url = master['main_release_url']
  main_release_serialized = URI.open(main_release_url).read
  main_release = JSON.parse(main_release_serialized)
  main_release['tracklist'].each do |track|
    Track.create(title: track['title'], position: track['position'], milliseconds: track['duration'], vinyl_id: vinyl.id)
  end
  vinyl.stars = main_release['community']['rating']['average']
  vinyl.save
end


search_track(nevermind)
search_track(bagatelle)
search_track(endless_smile)


def search_stars(vinyl)
  auth_wrapper = Discogs::Wrapper.new('Diamond', user_token: 'RLyIMYkXUJjJzRuzIjCLXvWTXsCkjbYvuubbvhoz')
  search = auth_wrapper.search("#{vinyl.title}", per_page: 10, type: :releases_title)
  master_url = search.results[0]['master_url']
  search_serialized = URI.open(master_url).read
  master = JSON.parse(search_serialized)
  main_release_url = master['main_release_url']
  main_release_serialized = URI.open(main_release_url).read
  main_release = JSON.parse(main_release_serialized)
end

search_stars(nevermind)
search_stars(bagatelle)
search_stars(endless_smile)


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

# puts "[VINYL TAGS] ..."
# # TODO: Add tags on UserVinyl
# TAGS.each do |tag|
#   Tag.create(title: tag)
# end

VinylTag.create(tag: Tag.all[8], user_vinyl: UserVinyl.find(8))
VinylTag.create(tag: Tag.all[3], user_vinyl: UserVinyl.find(8))

puts "Seeds created !"
