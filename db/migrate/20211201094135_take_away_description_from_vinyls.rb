class TakeAwayDescriptionFromVinyls < ActiveRecord::Migration[6.0]
  def change
    remove_column :vinyls, :description
  end
end
