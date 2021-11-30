class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :position
      t.string :sample
      t.integer :milliseconds
      t.references :vinyls, null: false, foreign_key: true

      t.timestamps
    end
  end
end
