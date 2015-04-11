class Player < ActiveRecord::Base
<<<<<<< HEAD
  has_many :characters
=======
  has_many :character, dependent: :destroy
>>>>>>> 77196f371fca7fc59a3870626466bb61785ca909

  validates :name, :last_name, :email, presence: true
  validates :name, :last_name, format: { :with => /\A[a-z A-Z]+\z/}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :name, :last_name, length: { maximum: 15 }
  validates :email, length: { maximum: 20 }
end
