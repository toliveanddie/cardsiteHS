class RemoveColumnFromCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :cards, :card_score, :integer
  end
end
