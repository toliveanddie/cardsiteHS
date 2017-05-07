class Deck < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :user_id, presence: true
    
    has_many :deck_cards, dependent: :destroy
    has_many :cards, through: :deck_cards
    
    def pick(card)
        cards << card
    end
    
    def picked?(card)
        picking.include?(card)
    end
end
