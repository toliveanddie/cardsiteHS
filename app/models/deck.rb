class Deck < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    
    has_many :deck_cards, dependent: :destroy
    has_many :cards, through: :deck_cards, dependent: :destroy
    
    def pick(card, score)
        deck_cards.create(deck_id: self.id, card_id: card.id, card_meta_score: score)
    end
end
