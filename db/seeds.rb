# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cards_path = "#{Rails.root}/public/response.json"
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
    :text => card['text'],
    :flavor => card['flavor'],
    :artist => card['artist'],
    :collectible => card['collectible'],
    :playerClass => card['playerClass'],
    :howToGet => card['howToGet'],
    :howToGetGold => card['howToGetGold'],
    :img => card['img'],
    :imgGold => card['imgGold'],
    :locale => card['locale']
    )
  end
 end