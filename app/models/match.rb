class Match < ActiveRecord::Base
	belongs_to :characters

  validates :character1_id, :character2_id, :vitality1, :vitality2, :winner, :quit, presence: true
  validates :character1_id, :character2_id, :vitality1, :vitality2, :winner, numericality: true
  validates :character1_id, :character2_id, :ganador, length: { maximum: 2 }
  validates :vitality1, :vitality2, length: { maximum: 5 }
end
