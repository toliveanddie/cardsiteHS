class DecksController < ApplicationController
    before_action :set_deck, only: [:show, :destroy]
    before_action :authenticate_user!
    
    def new
        if current_user.profile(:user_id) == nil
            redirect_to new_profile_path
        else
            @deck = current_user.decks.build
            @herocards = HeroCard.all
        end
    end
    
    def create
        deck_name = (params[:name])
        @deck = current_user.decks.build(name: deck_name)
        if @deck.save
            redirect_to @deck
        else
            render :new
        end
    end
    
    def show
        @deck_cards = @deck.deck_cards.build
    end
    
    def index
        @decks = Deck.paginate(:page => params[:page])
    end
    
    def destroy
        @deck.destroy
        redirect_to current_user.profile
    end
    
    private
        
        def set_deck
            @deck = Deck.find(params[:id])
        end
end
