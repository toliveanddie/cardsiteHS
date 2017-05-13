module WelcomeHelper
    
    def show_random_card
            cards = Card.all
            cards.shuffle.pop
    end
    
end
