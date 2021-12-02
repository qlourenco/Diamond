module Vinyls
  class DiscogsSearchService
    require 'json'
    require 'open-uri'

    def initialize(query_search)
      @query_search = query_search
      @vinyls = []
      @called_master_url = []
    end

    def call
      auth_wrapper = Discogs::Wrapper.new('Diamond', user_token: 'RLyIMYkXUJjJzRuzIjCLXvWTXsCkjbYvuubbvhoz')
      search = auth_wrapper.search("#{@query_search}", per_page: 15, type: :release_title)
      results = search.results.first(15)
      results.each do |result|
        master_url = result['master_url']

        next unless master_url && !@called_master_url.include?(master_url)

        @called_master_url << master_url

        search_serialized = URI.open(master_url).read
        master = JSON.parse(search_serialized)
        main_release_url = master['main_release_url']
        main_release_serialized = URI.open(main_release_url).read
        main_release = JSON.parse(main_release_serialized)

        tracks = []

        main_release['tracklist'].each do |track|
          tracks_info = {
            position: track['position'],
            title: track['title'],
            duration: track['duration']
          }
          tracks << tracks_info
        end

        vinyl = {
          cover_url: result["cover_image"],
          discogs_id: main_release['id'],
          artist_name: main_release['artists_sort'],
          label_name: main_release['labels'][0]['name'],
          rating: main_release['community']['rating']['average'],
          title: main_release['title'],
          released: main_release['released_formatted'],
          genre: main_release['genres'][0],
          tracks: tracks
        }
        @vinyls << vinyl
      end
      @vinyls
    end
  end
end
