class Character < ActiveRecord::Base
  belongs_to :player
  has_many :character_weapons
  has_many :bodyarmor_characters
  has_many :weapons
  has_many :body_armors
  has_many :attacks
  has_many :matchs

  validates :name, :kind_of_character, :age, :ability, :player_id, presence: true
  validates :name, :kind_of_character, :ability, format: { :with => /\A[a-z A-Z]+\z/}
  validates :age, :player_id, numericality: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 15 }
  validates :kind_of_character, :ability, length: { maximum: 10 }
  validates :age, length: { maximum: 2 }

end
