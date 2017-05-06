module CardsHelper
    
    def random_card
        card = Card.all
         return card.shuffle.pop
    end
    
end
