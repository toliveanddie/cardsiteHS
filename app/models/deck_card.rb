class DeckCard < ApplicationRecord
    belongs_to :deck, dependent: :destroy
    belongs_to :card, dependent: :destroy
    validates :deck_id, presence: true
    validates :card_id, presence: true
end
