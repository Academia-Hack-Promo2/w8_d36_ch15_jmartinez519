class CreateCharactersWeapons < ActiveRecord::Migration
  def change
    create_table :character_weapons, id: false do |t|
      t.references :character, index: true, foreign_key: true
      t.references :weapon, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :character_weapons, :character
    add_index :character_weapons, :weapon
  end
end
