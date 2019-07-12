class User < ApplicationRecord
    has_many :characters
    validates :username, presence: true, uniqueness: true 
    validates :password_digest, presence: true
end
