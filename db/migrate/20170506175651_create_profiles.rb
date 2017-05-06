class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :favorite_hero_class
      t.string :battle_tag
      t.string :steam_name

      t.timestamps
    end
  end
end
