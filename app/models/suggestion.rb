class Suggestion < ApplicationRecord
  def self.find_from_discogs(query_search)
    results_vinyls = Vinyls::DiscogsSearchService.new(query_search).call
    vinyls = []
    results_vinyls.each do |vinyl|
      p vinyl[:tracks]
      genre = Genre.find_or_create_by(name: vinyl[:genre])
      artist = Artist.find_or_create_by(name: vinyl[:artist_name])
      new_vinyl = Vinyl.find_or_create_by(title: vinyl[:title], release_date: vinyl[:released], genre: genre, artist: artist, stars: vinyl[:rating], cover_url: vinyl[:cover_url], discogs_id: vinyl[:discogs_id])
      vinyl[:tracks].each do |track|
        new_track = Track.find_or_create_by(title: track[:title], position: track[:position], vinyl_id: new_vinyl.id)
        new_track.update(milliseconds: track[:milliseconds]) if track[:milliseconds]
      end
      vinyls << new_vinyl
    end
    vinyls
  end
end
