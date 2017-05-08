module DecksHelper
    
    def arena_random_card
        check_hero = "Hero"
        while (check_hero == "Hero") do
            cards = Card.all
            random_card = cards.shuffle.pop
            check_hero = random_card.cardType
        end
        return random_card
    end

end
