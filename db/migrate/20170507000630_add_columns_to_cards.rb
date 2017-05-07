class AddColumnsToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :attack, :integer
    add_column :cards, :health, :integer
    add_column :cards, :elite, :boolean
    add_column :cards, :race, :string
  end
end
