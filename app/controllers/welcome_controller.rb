class WelcomeController < ApplicationController

  def index
    @user = current_user
  end 

  def academic_leaderboard_show
    @rankings = User.academic_leaderboard
  end 
  
end
