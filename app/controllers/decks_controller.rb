class DecksController < ApplicationController
    before_action :set_profile, only: [:show, :edit, :update, :destroy]
    
    def new
        @deck = current_user.decks.create
    end
    
    def create
        @deck = current_user.decks.create(deck_params)
    end
    
    def show
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
