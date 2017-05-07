class Deck < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :user_id, presence: true
    
    has_many :deck_cards, dependent: :destroy
    has_many :picking, through: :deck_cards, source: :card
    
    def pick(card)
        picking << card
    end
    
    def picked?(card)
        picking.include?(card)
    end
end
