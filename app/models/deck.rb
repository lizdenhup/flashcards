class Deck < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject 
  has_many :cards

  accepts_nested_attributes_for :subject

  def subject_attributes=(subject_attributes)
#    raise subject_attributes
    subject_attributes.values.each do |subject_attribute|
      subject = Subject.find_or_create_by(name: subject_attribute)
      subject.decks << self
    end
  end

  def show_random_card
    self.cards.limit(1).order("RANDOM() ")
  end 

end

