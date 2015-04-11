class Attack < ActiveRecord::Base
  belongs_to :character
  has_many :weapon

  validates :name, :kind, :danger, :weapon_id, :character_id, presence: true
  validates :name, :kind, format: { :with => /\A[a-z A-Z]+\z/}
  validates :danger, :weapon_id, :character_id, numericality: true
  validates :name, :kind, length: { maximum: 20 }
  validates :danger, length: { maximum: 3 }
  validates :name, :kind, uniqueness: true
end
