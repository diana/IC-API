class User < ApplicationRecord
    has_many :games
    validates :user_id, :presence => true, :uniqueness => {:case_sensitive => true}
end
