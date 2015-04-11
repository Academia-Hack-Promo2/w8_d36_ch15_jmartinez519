class CreateBodyarmorCharacters < ActiveRecord::Migration
  def change
    create_table :bodyarmor_characters, id: false do |t|
      t.integer :character
      t.integer :body_armor

      t.timestamps null: false
    end
    add_index :bodyarmors_characters, :character
    add_index :bodyarmors_characters, :body_armor
  end
end
