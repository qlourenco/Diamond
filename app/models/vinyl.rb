class Vinyl < ApplicationRecord
  belongs_to :genre
  belongs_to :artist

  has_many :tracks
  has_many :favorites
  has_many :user_vinyls

  validates :title, presence: true
  validates :release_date, presence: true
  # validates :discogs_id
  # validates :stars, numericality: { only_float: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  def self.find_from_discogs(query_search)
    results_vinyls = Vinyls::DiscogsSearchService.new(query_search).call
    vinyls = []
    results_vinyls.each do |vinyl|
      genre = Genre.find_or_create_by(name: vinyl[:genre])
      artist = Artist.find_or_create_by(name: vinyl[:artist_name])
      vinyls << Vinyl.find_or_create_by(title: vinyl[:title], release_date: vinyl[:released], genre: genre, artist: artist, stars: vinyl[:rating], cover_url: vinyl[:cover_url], discogs_id: vinyl[:discogs_id])
    end
    vinyls
  end
end
