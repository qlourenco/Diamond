class ChangeClassToVinylDate < ActiveRecord::Migration[6.0]
  def change
    change_column :vinyls, :release_date, :string
  end
end
