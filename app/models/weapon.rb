class Weapon < ActiveRecord::Base
	belongs_to :character
	has_many :character_weapons

  validates :name, :kind, :danger, :defense, :money, :character_id, presence: true
  validates :name, :kind, format: { :with => /\A[a-z A-Z]+\z/}
  validates :danger, :character_id, :money, :defense, numericality: true
  validates :name, :kind, uniqueness: true
  validates :name, :kind, length: { maximum: 20 }
  validates :danger, :defense, length: { maximum: 3 }
end
