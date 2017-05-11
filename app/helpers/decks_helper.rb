module DecksHelper
    
    def hero_names
        a = []
        names = ["Anduin Wrynn",
                  "Garrosh Hellscream",
                  "Gul'dan", 
                  "Jaina Proudmoore", 
                  "Malfurion Stormrage", 
                  "Rexxar", 
                  "Thrall",
                  "Uther Lightbringer",
                  "Valeera Sanguinar"]
                  
        names.each do |name|
            a.push(Card.where("name = ?", name))
        end
        return a.shuffle.pop(3)
    end
    
# get a random rarity
    def random_rarity
        chance_array = []
        a = Array.new(3)
        a.fill("Legendary")
        b = Array.new(9)
        b.fill("Epic")
        c = Array.new(20)
        c.fill("Rare")
        d = Array.new(34)
        d.fill("Common")
        e = Array.new(34)
        e.fill("Free")
        chance_array = a + b + c + d + e
        return chance_array.shuffle.pop
    end

    #standard arena random card generator
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

    #push hero class cards
    
    # push only hero class cards
            hero_class_cards = []
            cards.each do |card|
                if card.playerClass == hero_class
                    hero_class_cards << card
                end
            end
            
    # sort hero class cards into standard cards
        standard_cardset.each do |cardset|
            hero_class_cards.each do |card|
                if card.cardSet == cardset
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
            hero_check = random_card.cardtype
        end
        return random_card
    end

end
