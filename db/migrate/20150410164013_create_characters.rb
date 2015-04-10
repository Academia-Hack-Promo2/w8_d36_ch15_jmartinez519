class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :kind_of_character
      t.integer :age
      t.integer :vitality, default: 1
      t.integer :life_points, default: 20
      t.string :ability
      t.integer :level, default: 1
      t.integer :points_of_defense, default: 5
      t.integer :points_of_attack, default: 5
      t.references :player, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
