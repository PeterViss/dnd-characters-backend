class Character < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates  :gender, presence: true
    validates  :background, presence: true
    validates  :race, presence: true
    validates  :picture, presence: true
    validates  :strength, presence: true
    validates  :dexterity, presence: true
    validates  :constitution, presence: true
    validates  :intelligence, presence: true
    validates  :wisdom, presence: true 
    validates  :charisma, presence: true
end
