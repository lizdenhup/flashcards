class CardsController < ApplicationController

  def new
    @card = Card.new 
  end 

  def create
    @card = Card.new(card_params)
    @card.save 
    # need to fix below line so deck_id is not nil
    redirect_to deck_path(@card.deck_id)
  end 

  def show
    @card = Card.find_by(id: params[:id])
  end 

  private
  def card_params
    params.require(:card).permit(:question, :answer)
  end 
end
