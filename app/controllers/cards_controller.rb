class CardsController < ApplicationController

  def new
    @card = Card.new
    @deck = Deck.find_by(id: params[:deck_id])
  end 

  def create
    @card = Card.new(card_params)
    @deck = Deck.find_by(id: params[:deck_id])
    if @card.save
      redirect_to deck_card_path(@deck, @card)
    else 
      redirect_to 'cards/new'
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
    params.require(:card).permit(:question, :answer, :deck_id)
  end 
end
