class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :character1_id
      t.integer :character2_id
      t.integer :vitality1
      t.integer :vitality2
      t.integer :ganador
      t.boolean :retiro
      t.timestamps null: false
    end
    add_foreign_key :matches, :characters, column: :character1_id
  add_foreign_key :matches, :characters, column: :character2_id 
  end
end
