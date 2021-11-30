class CreateVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyls do |t|
      t.references :genres, null: false, foreign_key: true
      t.references :artists, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.date :year
      t.integer :discogs_id
      t.float :stars

      t.timestamps
    end
  end
end
