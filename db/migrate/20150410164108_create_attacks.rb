class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :kind
      t.string :name
      t.integer :danger
      t.references :weapon, index: true, foreign_key: true
      t.string :character
      t.references :character, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
