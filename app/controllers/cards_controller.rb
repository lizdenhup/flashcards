class CardsController < ApplicationController

  def new
    @card = Card.new(deck_attributes[deck_id]: params[deck_id])
  end 

  def create
    @card = Card.new(card_params)
    if @card.save
      #need to fix below line 
      redirect_to deck_card_path(@deck)
    else 
      render 'cards/form'
    end 
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
    params.require(:card).permit(:question, :answer, :deck_attributes => [:deck_id])
  end 
end
