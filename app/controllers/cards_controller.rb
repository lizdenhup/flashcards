class CardsController < ApplicationController

  def new
    @card = Card.new 
  end 

  def create

  end 

  def show
    @card = Card.find_by(id: params[:id])
  end 

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.update(card_params)
  end 

  private
  def card_params
    params.require(:card).permit(:question, :answer)
  end 
end
