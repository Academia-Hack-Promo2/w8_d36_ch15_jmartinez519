class BodyArmor < ActiveRecord::Base
	belongs_to :character
	has_many :bodyarmor_character
end
