class ArenasController < ApplicationController
    
    def pick_card
        @selected_card = params[:card_name]
    end
end
