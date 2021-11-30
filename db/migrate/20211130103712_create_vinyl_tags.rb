class CreateVinylTags < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyl_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :user_vinyl, null: false, foreign_key: true

      t.timestamps
    end
  end
end
