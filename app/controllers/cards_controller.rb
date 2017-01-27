class CardsController < ApplicationController

  def new
    @card = Card.new
    @user = current_user
    @deck = Deck.find_by(id: params[:deck_id])
  end 

  def create
    @card = Card.new(card_params)
    @deck = Deck.find_by(id: params[:deck_id])
    if @card.save
      redirect_to user_deck_card_path(user_id: current_user.id, deck_id: @deck.id, id: @card.id)
    else 
      redirect_to 'cards/new'
    end 
  end 

  def show
    @deck = Deck.find_by(id: params[:deck_id])
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
    params.require(:card).permit(:question, :answer, :deck_id, :uaer_id)
  end 
end
