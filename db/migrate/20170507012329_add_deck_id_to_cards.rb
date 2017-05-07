class AddDeckIdToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :deck_id, :integer
    add_index :cards, :deck_id
  end
end
