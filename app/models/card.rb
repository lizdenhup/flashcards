class Card < ActiveRecord::Base
  belongs_to :deck 
  validates :question, uniqueness: true
  validates :answer, uniqueness: true 

  accepts_nested_attributes_for :deck   
end
