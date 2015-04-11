class CreateBodyarmorCharacters < ActiveRecord::Migration
  def change
    create_table :bodyarmor_characters, id: false do |t|
      t.integer :character, foreign_key: true
      t.integer :body_armor, foreign_key: true

      t.timestamps null: false
    end
    add_index :bodyarmors_characters, :character
    add_index :bodyarmors_characters, :body_armor
  end
end
