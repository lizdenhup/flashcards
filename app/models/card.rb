class Card < ActiveRecord::Base
  belongs_to :deck 

  accepts_nested_attributes_for :deck 
  
end
