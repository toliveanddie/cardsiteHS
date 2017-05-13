class CreateTierScores < ActiveRecord::Migration[5.0]
  def change
    create_table :tier_scores do |t|
      t.string :hero
      t.integer :hero_score

      t.timestamps
    end
  end
end
