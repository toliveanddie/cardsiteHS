class CreateHeroCards < ActiveRecord::Migration[5.0]
  def change
    create_table :hero_cards do |t|
      t.string :name
      t.string :playerClass
      t.string :img

      t.timestamps
    end
  end
end
