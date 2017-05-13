class AddMetaScoreToDecks < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :meta_score, :integer
  end
end
