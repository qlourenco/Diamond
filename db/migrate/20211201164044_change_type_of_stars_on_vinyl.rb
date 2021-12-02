class ChangeTypeOfStarsOnVinyl < ActiveRecord::Migration[6.0]
  def change
    change_column :vinyls, :stars, :string
  end
end
