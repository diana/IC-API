class Game < ApplicationRecord
  belongs_to :user
  has_many :scenarios
  has_many :questions, through: :scenarios
  validates :user_id, :title, :presence => true

end
