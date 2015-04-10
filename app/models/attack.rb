class Attack < ActiveRecord::Base
  has_many :weapon
  belongs_to :character
end
