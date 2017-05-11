class RenameColumnsInCards < ActiveRecord::Migration[5.0]
  def change
    change_table :cards do |t|
      t.rename :cardType, :cardtype
    end
  end
end
