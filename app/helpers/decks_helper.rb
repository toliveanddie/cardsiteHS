module DecksHelper
    
    def hero_names(heroes)
        heroes.shuffle.pop(3)
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
        arena_cards = []
                          
    # push neutral cards
        cards.each do |card|
            if card.playerClass == "Neutral"
                arena_cards << card
            end
        end

    #push hero class cards
    
    # push only hero class cards
        cards.each do |card|
            if card.playerClass == hero_class
                arena_cards << card
            end
        end
        
    # sorting for the random rarity        
        rarity_cards = []
        arena_cards.each do |card|
            if card.rarity == card_rarity
                rarity_cards << card
            end
        end
        #returning 3 random cards from the rarity array of cards
        return rarity_cards.shuffle.pop(3)
    end
    
    #finding the meta score for the arena partial
    def meta_score(card, hero_class)
        if card.tier_scores.where("hero = ?", hero_class).exists?
            card.tier_scores.find_by_hero(hero_class).hero_score
        else
            card.tier_scores.first.hero_score
        end
    end
end
