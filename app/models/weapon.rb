class Weapon < ActiveRecord::Base
	belongs_to :character
	has_many :character_weapon
end
