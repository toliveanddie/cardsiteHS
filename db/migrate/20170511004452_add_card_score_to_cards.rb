class AddCardScoreToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :card_score, :integer
  end
end
