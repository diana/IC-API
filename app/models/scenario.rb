class Scenario < ApplicationRecord
  belongs_to :game
  has_many :questions
  validates :game_id, :title, :presence => true

end
