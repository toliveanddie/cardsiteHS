module WelcomeHelper
    
    def show_random_card
        hero_check = "hero"
        while (hero_check == "hero") do
            cards = Card.all
            random_card = cards.shuffle.pop
            hero_check = random_card
        end
        return random_card
    end
    
end
