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
    @user = current_user
    @deck = @card.deck
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.update(card_params)
    redirect_to user_deck_card_path(user_id: current_user.id, deck_id: @card.deck.id, id: @card.id)
  end 

  def destroy
    @card = Card.find_by(id: params[:id])
    @card.destroy
    flash[:success] = "You have successfully deleted this card."
    redirect_to user_deck_path(user_id: current_user.id, id: @card.deck_id)
  end

  private
  def card_params
    params.require(:card).permit(:question, :answer, :deck_id, :uaer_id)
  end 
end
