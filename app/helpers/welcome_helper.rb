module WelcomeHelper
    
    def show_random_card
        cards = Card.all
        random_card = cards.shuffle.pop
        return random_card
    end
    
end
