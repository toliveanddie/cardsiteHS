class Card < ApplicationRecord
    scope :druid, -> { where(playerClass: 'Druid') }
    scope :hunter, -> { where(playerClass: 'Hunter') }
    scope :mage, -> { where(playerClass: 'Mage') }
    scope :paladin, -> { where(playerClass: 'Paladin') }
    scope :priest, -> { where(playerClass: 'Priest') }
    scope :rogue, -> { where(playerClass: 'Rogue') }
    scope :shaman, -> { where(playerClass: 'Shaman') }
    scope :warlock, -> { where(playerClass: 'Warlock') }
    scope :warrior, -> { where(playerClass: 'Warrior') }
    scope :neutral, -> { where(playerClass: 'Neutral') }
    
    belongs_to :deck_card
    has_many :decks, through: :deck_cards, dependent: :destroy
end
