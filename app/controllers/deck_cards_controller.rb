class DeckCardsController < ApplicationController
    
    def create
        @card = Card.find(params[:card_id])
        @deck = Deck.find(params[:deck_id])
        @score = params[:card_meta_score].to_i
        
        @deck.pick(@card, @score)
        redirect_to @deck
    end
    
    def destroy
    end
end
