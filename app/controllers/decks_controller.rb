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
    if @deck.save 
      flash[:success] = "Success! Your deck has been added."
      redirect_to user_deck_path(id: @deck.id, user_id: current_user.id)
    else 
      flash[:error] = "Sorry. Name/subject cannot be blank."
      redirect_to new_user_deck_path(user_id: current_user.id)
    end 
  end 

  def show
    @deck = Deck.find_by(id: params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @deck }
    end 
  end 

  def edit
    @user = current_user
    @deck = Deck.find_by(id: params[:id])
  end 

  def update
    @deck = Deck.find_by(id: params[:id])
    @deck.update(deck_params)
    redirect_to user_deck_path(user_id: current_user.id, id: params[:id])
  end

  def destroy
    @deck = Deck.find_by(id: params[:id])
    @deck.destroy
    flash[:success] = "Deck successfully deleted."
    redirect_to user_decks_path(user_id: current_user.id)
  end 
  
private
  def deck_params
    params.require(:deck).permit(:name, :user_id, :subject_attributes => [:name])
  end
end
