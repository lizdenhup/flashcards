class Subject < ActiveRecord::Base
  has_many :decks, dependent: :destroy 
  has_many :users, through: :decks
end
