class TracksfixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :tracks, :vinyls_id, :vinyl_id
  end
end
