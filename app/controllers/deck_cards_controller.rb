class DeckCardsController < ApplicationController
    
    def create
        card = Card.find(params[:card_id])
        deck = Deck.find(params[:id])
        deck.pick(card)
    end
    
    def destroy
    end
end
