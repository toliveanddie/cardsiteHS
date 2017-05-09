module DecksHelper
    
    def random_hero_card
        hero_cards = []
        cards = Card.all
        heroes = ["Anduin Wrynn",
                  "Garrosh Hellscream",
                  "Gul'dan", 
                  "Jaina Proudmoore", 
                  "Malfurion Stormrage", 
                  "Rexxar", 
                  "Thrall",
                  "Uther Lightbringer",
                  "Valeera Sanguinar"]
        heroes.each do |hero|
            hero_cards.push(cards.find_by name: hero)
        end
        return hero_cards.shuffle.pop
    end
    
# get a random rarity
    def random_rarity
    
        chance_array = []
        3.times do
            chance_array.push("Legendary")
        end
        9.times do
            chance_array.push("Epic")
        end
        20.times do
            chance_array.push("Rare")
        end
        34.times do
            chance_array.push("Common")
        end
        34.times do
            chance_array.push("Free")
        end
        return chance_array.shuffle.pop
    end

    #get a random_card  
    def arena_random_card(card_rarity, hero_class)
        
        cards = Card.all
        standard_cards = []
        
        standard_cardset = ["Basic",
                          "Common",
                          "Whispers of the Old Gods",
                          "One Night in Karazhan",
                          "Mean Streets of Gadgetzan",
                          "Journey to Un'Goro"
                          ]
                          
    # push neutral cards
        neutral_cards = []
        cards.each do |card|
            if card.playerClass == "Neutral"
                neutral_cards << card
            end
        end
                          
    # only push standard cards from neutral cards
        standard_cardset.each do |cardset|
            neutral_cards.each do |card|
                if card.cardSet == cardset
                    standard_cards << card
                end
            end
        end

    # sort hero class selection from hero cards
        standard_cardset.each do |cardset|
            cards.each do |card|
                if card.playerClass == hero_class
                    standard_cards << card
                end
            end
        end
            
            
        
    # sorting for a specific rarity        
        rarity_cards = []
        standard_cards.each do |card|
            if card.rarity == card_rarity
                rarity_cards << card
            end
        end
        
    # check if card is a "Hero"
        hero_check = "Hero"
        while (hero_check == "Hero") do
            random_card = rarity_cards.shuffle.pop
            hero_check = random_card.cardType
        end
        return random_card
    end

end
