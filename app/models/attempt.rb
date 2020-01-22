class Attempt < ApplicationRecord
  belongs_to :game
  has_many :answers
  validates :game_id, :presence => true
  validates :username, :presence => true, :uniqueness => {:case_sensitive => false}

end
