class Match < ActiveRecord::Base
	belongs_to :character

  validates :character1_id, :character2_id, :vitality1, :vitality2, :ganador, :retiro, presence: true
  validates :character1_id, :character2_id, :vitality1, :vitality2, :ganador, numericality: true
  validates :character1_id, :character2_id, :ganador, length: { maximum: 2 }
  validates :vitality1, :vitality2, length: { maximum: 5 }
end
