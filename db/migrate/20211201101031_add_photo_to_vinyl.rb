class AddPhotoToVinyl < ActiveRecord::Migration[6.0]
  def change
    add_column :vinyls, :cover_url, :string
  end
end
