class Weapon < ActiveRecord::Base
	has_and_belongs_to_many :characters

  validates :name, :kind, :danger, :defense, :money, :character_id, presence: true
  validates :name, :kind, format: { :with => /\A[a-z A-Z]+\z/}
  validates :danger, :character_id, :money, :defense, numericality: true
  validates :name, :kind, uniqueness: true
  validates :name, :kind, length: { maximum: 20 }
  validates :danger, :defense, length: { maximum: 3 }
end
