class CreateBodyArmors < ActiveRecord::Migration
  def change
    create_table :body_armors do |t|
      t.string :kind
      t.string :name
      t.string :character
      t.integer :defense
      t.integer :danger
      t.integer :money
      t.references :character, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
