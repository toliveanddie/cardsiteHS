module DecksHelper
    
    def arena_random_card
        check_hero = "hero"
        while (check_hero == "hero") do
            cards = Card.all
            random_card = cards.shuffle.pop
            check_hero = random_card
        end
        return random_card
    end

end
