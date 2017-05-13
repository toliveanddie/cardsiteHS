class AddCardIdToTierScores < ActiveRecord::Migration[5.0]
  def change
    add_column :tier_scores, :card_id, :integer
    add_index :tier_scores, :card_id
  end
end
