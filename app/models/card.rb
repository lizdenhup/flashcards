class Card < ActiveRecord::Base
  belongs_to :deck 

  accepts_nested_attributes_for :deck 
  
  def self.show_random_card
    Card.limit(1).order("RANDOM() ")
  end 

end
