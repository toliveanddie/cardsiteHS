class AddCardMetaScoreToDeckCards < ActiveRecord::Migration[5.0]
  def change
    add_column :deck_cards, :card_meta_score, :integer
  end
end
