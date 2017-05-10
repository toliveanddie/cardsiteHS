class DeckCardsController < ApplicationController
    
    def create
        @card = Card.find(params[:card_id])
        @deck = Deck.find(params[:deck_id])
        
        @deck.pick(@card)
        redirect_to @deck
    end
    
    def destroy
    end
end
