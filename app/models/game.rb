class Game < ApplicationRecord
  belongs_to :user
  has_many :scenarios, dependent: :destroy
  has_many :attempts, dependent: :destroy
  has_many :questions, through: :scenarios
  has_many :answers, through: :attempts
  validates :user_id, :title, :presence => true

end
