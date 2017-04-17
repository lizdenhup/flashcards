class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :cards
  has_one :subject
  
end
