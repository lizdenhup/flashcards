class Deck < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject 
  has_many :cards
end
