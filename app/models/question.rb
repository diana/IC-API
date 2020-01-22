class Question < ApplicationRecord
  belongs_to :scenario
  has_many :answers
  validates :scenario_id, :question, :answer, :presence => true

end
