class DecksController < ApplicationController

  def index
    @decks = current_user.decks
  end 

  def new
    @deck = Deck.new
  end 

  def create
    @deck = Deck.new(deck_params)
    @deck.save 
    redirect_to deck_path(@deck)
  end 

  def show
    @deck = Deck.find_by(id: params[:id])
    @cards = @deck.cards 
  end 

  def update

  end

  def deck_params
    params.require(:deck).permit(:name, :user_id, :subject_attributes => [:name])
  end
end
