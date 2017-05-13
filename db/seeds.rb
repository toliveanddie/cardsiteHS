# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#push the cards to model
cards_path = "#{Rails.root}/public/collectible.json"
cards = JSON.parse(File.read(cards_path))
cards.each do |key, value|
  value.each do |card|
    Card.create!(
    :cardId => card['cardId'],
    :name => card['name'],
    :cardSet => card['cardSet'],
    :cardtype => card['type'],
    :faction => card['faction'],
    :rarity => card['rarity'],
    :cost => card['cost'],
    :attack => card['attack'],
    :health => card['health'],
    :text => card['text'],
    :flavor => card['flavor'],
    :artist => card['artist'],
    :collectible => card['collectible'],
    :elite => card['elite'],
    :race => card['race'],
    :playerClass => card['playerClass'],
    :howToGet => card['howToGet'],
    :howToGetGold => card['howToGetGold'],
    :img => card['img'],
    :imgGold => card['imgGold'],
    :locale => card['locale']
    )
  end
end

#push tier scores
tier_path = "#{Rails.root}/public/tier.json"
tier_cards = JSON.parse(File.read(tier_path))
tier_cards.each do |key, value|
  value.each do |score_card|
    score_card['Scores'].each do |score|
      mcard = Card.find_by cardId: score_card['CardId']
      mcard.tier_scores.create!(:hero => score['Hero'],
                       :hero_score => score['Score'])
    end
  end
end

dcards = Card.all
dcards.each do |d|
  if d.tier_scores.count == 0
    d.delete
  end
end
hnames = ["Anduin Wrynn",
          "Garrosh Hellscream",
          "Gul'dan", 
          "Jaina Proudmoore", 
          "Malfurion Stormrage", 
          "Rexxar", 
          "Thrall",
          "Uther Lightbringer",
          "Valeera Sanguinar"]
hero_path = "#{Rails.root}/public/collectible.json"
hero_cards = JSON.parse(File.read(hero_path))
hero_cards.each do |key, value|
  value.each do |card|
    hnames.each do |hname|
      if card['name'] == hname
        HeroCard.create!(
          :name => card['name'],
          :playerClass => card['playerClass'],
          :img => card['img'])
      end
    end
  end
end