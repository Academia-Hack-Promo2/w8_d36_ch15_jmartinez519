class CreateCharacterWeapons < ActiveRecord::Migration
  def change
    create_table :character_weapons do |t|
      t.references :character, index: true, foreign_key: true
      t.references :weapon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
