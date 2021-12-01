class ChangeTypeOfPositioTrack < ActiveRecord::Migration[6.0]
  def change
    change_column :tracks, :position, :string
  end
end
