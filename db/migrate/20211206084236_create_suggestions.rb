class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|

      t.timestamps
    end
  end
end
