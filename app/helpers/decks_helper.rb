module DecksHelper
    
    def three_random_heroes
        heroes = ["Anduin Wrynn",
                  "Garrosh Hellscream",
                  "Gul'dan", 
                  "Jaina Proudmoore", 
                  "Malfurion Stormrage", 
                  "Rexxar", 
                  "Thrall",
                  "Uther Lightbringer",
                  "Valeera Sanguinar"]
        return heroes.shuffle.pop(3)
    end
    
    def random_rarity
    
        chance_array = []
        2.times do
            chance_array.push("Legendary")
        end
        5.times do
            chance_array.push("Epic")
        end
        20.times do
            chance_array.push("Rare")
        end
        80.times do
            chance_array.push("Common")
        end
        80.times do
            chance_array.push("Free")
        end
        return chance_array.shuffle.pop
    end
        
    def arena_random_card(card_rarity)
        cards = Card.all
        rarity_cards = []
        check_hero = "Hero"
        cards.each do |card|
            if card.rarity == card_rarity
                rarity_cards << card
            end
        end
        while (check_hero == "Hero") do
            random_card = rarity_cards.shuffle.pop
            check_hero = random_card.cardType
        end
        return random_card
    end

end
