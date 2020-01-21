class Question < ApplicationRecord
  belongs_to :scenario
  validates :scenario_id, :question, :answer, :presence => true

end
