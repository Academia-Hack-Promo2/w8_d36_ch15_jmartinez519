class CreateCharactersWeapons < ActiveRecord::Migration
  def change
    create_table :character_weapons, id: false do |t|
      t.integer :character, foreign_key: true
      t.integer :weapon, foreign_key: true

      t.timestamps null: false
    end
    add_index :character_weapons, :character
    add_index :character_weapons, :weapon
  end
end
