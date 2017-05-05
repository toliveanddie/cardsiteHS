class CardsController < ApplicationController
  def show
    @card = Card.find(params[:id])
  end

  def index
    @cards = Card.paginate(:page => params[:page])
  end
  
end
