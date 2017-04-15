# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

states_and_capitals = {
  "Alabama" => "Montgomery",
  "Alaska" => "Juneau",
  "Arizona" => "Phoenix",
  "Arkansas" => "Little Rock",
  "California" => "Sacramento",
  "Colorado" => "Denver",
  "Connecticut" => "Hartford",
  "Delaware" => "Dover",
  "Florida" => "Tallahassee",
  "Georgia" => "Atlanta",
  "Hawaii" => "Honolulu",
  "Idaho" => "Boise",
  "Illinois" => "Springfield",
  "Indiana" => "Indianapolis",
  "Iowa" => "Des Moines"
  "Kansas" => "Topeka",
  "Kentucky" => "Frankfort",
  "Louisiana" => "Baton Rouge",
  "Maine" => "Augusta",
  "Maryland" => "Annapolis",
  "Massachusetts" => "Boston",
  "Michigan" => "Lansing",
  "Minnesota" => "Saint Paul",
  "Mississippi" => "Jackson",
  "Missouri" => "Jefferson",
  "Montana" => "Helena",
  "Nebraska" => "Lincoln",
  "Nevada" => "Carson City",
  "New Hampshire" => "Concord",
  "New Jersey" => "Trenton",
  "New Mexico" => "Santa Fe",
  "New York" => "Albany",
  "North Carolina" => "Raleigh",
  "North Dakota" => "Bismarck",
  "Ohio" => "Columbus", 
  "Oklahoma" => "Oklahoma City",
  "Oregon" => "Salem",
  "Pennsylvania" => "Harrisburg",
  "Rhode Island" => "Providence",
  "South Carolina" => "Columbia",
  "South Dakota" => "Pierre",
  "Tennessee" => "Nashville",
  "Texas" => "Austin",
  "Utah" => "Salt Lake City",
  "Vermont" => "Montpelier",
  "Virginia" => "Richmond",
  "Washington" => "Olympia",
  "West Virginia" => "Charleston",  
  "Wisconsin" => "Madison",
  "Wyoming" => "Cheyenne"
}

@subject = Subject.create(name: "Geography")
@deck = Deck.create(name: "States and their Capitals", user_id: User.first.id, subject_id: @subject.id)

states_and_capitals.each do |key, value| 
  @card = Card.create(question: key, answer: value, deck_id: @deck.id)
end 




