class VinylsFixColumnName < ActiveRecord::Migration[6.0]
  def change
    change_table :vinyls do |t|
      t.rename :genres_id, :genre_id
      t.rename :artists_id, :artist_id
      t.rename :year, :release_date
    end
    change_column :vinyls, :discogs_id, :string
  end
end
