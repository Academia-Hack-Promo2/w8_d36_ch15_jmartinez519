class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :kind
      t.string :name
      t.integer :danger
      t.integer :defense
      t.integer :money
      t.references :character, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
