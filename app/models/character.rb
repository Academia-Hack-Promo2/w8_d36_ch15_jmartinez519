class Character < ActiveRecord::Base
  belongs_to :player
  has_many :character_weapon
  has_many :bodyarmor_character
  has_many :weapon
  has_many :body_armor
  has_many :attack
  has_many :match

  validates :name, presence: true
end
