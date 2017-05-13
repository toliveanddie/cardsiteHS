class TierScore < ApplicationRecord
    belongs_to :card
    validates :card_id, presence: true
end
