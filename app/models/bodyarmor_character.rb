class BodyarmorCharacter < ActiveRecord::Base
  belongs_to :character
  belongs_to :body_armor
end
