class DecksController < ApplicationController
    before_action :set_deck, only: [:show, :destroy]
    before_action :authenticate_user!
    
    def new
        @deck = current_user.decks.build
    end
    
    def create
        @deck = current_user.decks.build(deck_params)
        if @deck.save
            redirect_to @deck
        else
            render :new
        end
    end
    
    def show
        @deck_cards = @deck.deck_cards.build
    end
    
    def destroy
        @deck.destroy
        redirect_to current_user.profile
    end
    
    private
        
        def deck_params
            params.require(:deck).permit(:name)
        end
        
        def set_deck
            @deck = Deck.find(params[:id])
        end
end
