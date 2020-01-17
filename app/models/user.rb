class User < ApplicationRecord
    has_many :games
    has_many :scenarios, through: :games
    validates :user_id, :presence => true, :uniqueness => {:case_sensitive => true}
end
