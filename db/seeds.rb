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
    :cardType => card['type'],
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

minions = Card.where("cardType = 'Minion'")
free_minions = minions.where("rarity = 'Free'")
free_minions.each do |card|
  if card.playerClass == "Neutral"
    a = 2
  else
    a = 3
  end
    a += card.cost
    a += (card.attack * 2)
    a += (card.health * 3)
    card.card_score = a
    card.save
end

common_minions = minions.where("rarity = 'Common'")
common_minions.each do |card|
    if card.playerClass == "Neutral"
      a = 3
    else
      a = 4
    end
    a += card.cost
    a += (card.attack * 2)
    a += (card.health * 3)
    card.card_score = a
    card.save
end

rare_minions = minions.where("rarity = 'Rare'")
rare_minions.each do |card|
    if card.playerClass == "Neutral"
      a = 5
    else
      a = 7
    end
    a += card.cost
    a += (card.attack * 2)
    a += (card.health * 3)
    card.card_score = a
    card.save
end

epic_minions = minions.where("rarity = 'Epic'")
epic_minions.each do |card|
    if card.playerClass == "Neutral"
      a = 12
    else
      a = 16
    end
    a += card.cost
    a += (card.attack * 2)
    a += (card.health * 3)
    card.card_score = a
    card.save
end

legendary_minions = minions.where("rarity = 'Legendary'")
legendary_minions.each do |card|
    if card.playerClass == "Neutral"
      a = 34
    else
      a = 42
    end
    a += card.cost
    a += (card.attack * 2)
    a += (card.health * 3)
    card.card_score = a
    card.save
end