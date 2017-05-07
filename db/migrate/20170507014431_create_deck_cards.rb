class CreateDeckCards < ActiveRecord::Migration[5.0]
  def change
    create_table :deck_cards do |t|
      t.integer :deck_id
      t.integer :card_id

      t.timestamps
    end
    add_index :deck_cards, :deck_id
    add_index :deck_cards, :card_id
  end
end
