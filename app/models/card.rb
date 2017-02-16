class Card < ActiveRecord::Base
  belongs_to :deck 
  validates :question, presence: true
  validates :answer, presence: true 

  accepts_nested_attributes_for :deck   

# under construction - pseudocode for tracking student's
# performance over time 

#  def self.right?
#    if the user clicks 'I got this right'
#      rightness score: 1
#    else the user got this wrong
#      rightness score: 0 
#    end
#  end 

end
