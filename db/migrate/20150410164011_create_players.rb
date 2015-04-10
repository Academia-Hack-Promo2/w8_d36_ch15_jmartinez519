class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :money, default: 10
      t.timestamps null: false
    end
  end
end
