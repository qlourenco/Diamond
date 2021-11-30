class CreateUserVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :user_vinyls do |t|
      t.references :vinyl, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
