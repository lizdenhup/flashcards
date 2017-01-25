class DecksController < ApplicationController

  def index
    @user = current_user
    @decks = @user.decks
  end 

  def new
    @user = current_user
    @deck = Deck.new
  end 

  def create
    @deck = Deck.new(deck_params)
    @deck.save 
    redirect_to user_deck_path(id: @deck.id, user_id: current_user.id)
  end 

  def show
    @deck = Deck.find_by(id: params[:id])
    @cards = Card.all.where(deck_id: params[:id]) 
  end 

  def update

  end

  def deck_params
    params.require(:deck).permit(:name, :user_id, :subject_attributes => [:name])
  end
end
