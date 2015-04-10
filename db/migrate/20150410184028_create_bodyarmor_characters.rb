class CreateBodyarmorCharacters < ActiveRecord::Migration
  def change
    create_table :bodyarmor_characters do |t|
      t.references :character, index: true, foreign_key: true
      t.references :body_armor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
