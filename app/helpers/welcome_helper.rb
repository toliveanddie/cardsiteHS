module WelcomeHelper
    
    def show_random_card
        hero_check = "Hero"
        while (hero_check == "Hero") do
            cards = Card.all
            random_card = cards.shuffle.pop
            hero_check = random_card.cardType
        end
        return random_card
    end
    
end
