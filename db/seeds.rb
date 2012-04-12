def log(message)
  STDOUT.puts message
end

log "Create some decks - Vocabulary, Math, Animals, Colors and Numbers, States and capitals"
vocab_deck = PersistencePrefix::Deck.create(name: "K5 Vocabulary")
math_deck = PersistencePrefix::Deck.create(name: "K5 Math")
animal_deck = PersistencePrefix::Deck.create(name: "Name that animal")
color_number_deck = PersistencePrefix::Deck.create(name: "Colors and Numbers")
state_capitals_deck = PersistencePrefix::Deck.create(name: "States and Capitals")

log "Create some Vocabulary cards"
%w(who see was we eight ate so do they me my love like what you when Jesus favorite number color).each do |word|
  content = "#{word}\n[%= pronounce #{word} %]"
  vocab_deck.cards.create(name: word, front_content: content, back_content: content)
end

log "Create some Math cards"
data = {
  "2 + 2"  => "4",
  "10 - 8" => "2",
  "2 * 5"  => "10"
}
data.each_pair do |key, value|
  math_deck.cards.create(name: key, front_content: key, back_content: value)
end

log "Create some animal matching cards"
data = {
  "Monarch Butterfly" => "http://pnwfieldguide.wikispaces.com/file/view/bleh.jpg/112666999/bleh.jpg",
  "Brown Recluse"     => "http://www.nlm.nih.gov/medlineplus/ency/images/ency/fullsize/19570.jpg",
  "Scorpion"          => "http://lhs204.stellpflug.com/Period%205/Amandeep%20Kaur/images/scorpions%20pic.gif",
  "Toad"              => "http://www.dicts.info/img/ud/toad.jpg",
  "Frog"              => "http://static.ddmcdn.com/gif/frog-1.jpg",
  "Hawk"              => "http://images.nationalgeographic.com/wpf/media-live/photos/000/006/cache/red-tailed-hawk_681_600x450.jpg",
  "Eagle"             => "http://www.tobinphoto.com/images/photos/bald_eagle.jpg",
  "Vulture"           => "http://cdn1.arkive.org/media/28/2819F167-1556-4BFA-98CF-478C3D1695BE/Presentation.Large/Indian-vulture-on-ground.jpg",
  "Sparrow"           => "http://3.bp.blogspot.com/-GRDFtCWXhQM/TiAfHzuve7I/AAAAAAAAAIs/E4BqswqcH9Q/s1600/sparrow_1.jpg",
  "Tiger"             => "http://fohn.net/tiger-pictures-facts/tiger-regal.jpg",
  "Lion"              => "http://singitasafari.com/wp-content/uploads/2011/09/Lion-in-Captivity.jpg",
  "Cheetah"           => "http://images.nationalgeographic.com/wpf/media-live/photos/000/004/cache/cheetah_492_600x450.jpg",
  "Puma"              => "http://images.pictureshunt.com/pics/p/puma_jumping-8690.jpg",
  "Bobcat"            => "http://www.wild-life-rehab.com/Education%20Page%20Photos/Adult_Bobcat.jpg"
}
data.each_pair do |key, value|
  animal_deck.cards.create(name: "Animal", front_content: "![](#{value})", back_content: key)
end

log "Create some color and number cards"
color_data = {
  "Orange" => "orange",
  "Red"    => "red",
  "Blue"   => "blue",
  "Black"  => "black",
  "White"  => "white",
  "Pink"   => "pink",
  "Brown"  => "Light Goldenrod4",
  "Purple" => "purple",
  "Green"  => "green",
  "Grey"   => "grey",
  "Yellow" => "yellow"

}
color_data.each_pair do |key, value|
  color_number_deck.cards.create(name: key, front_content: key, back_content: "<div style='background-color: #{value}; height: 300px; width: 300px'></div>")
end
number_data = {
  "One" => 1,
  "Two" => 2,
  "Three" => 3,
  "Four" => 4,
  "Five" => 5,
  "Six"  => 6,
  "Seven" => 7,
  "Eight" => 8,
  "Nine" => 9,
  "Ten" => 10,
  "Eleven" => 11,
  "Twelve" => 12,
  "Thirteen" => 13,
  "Fourteen" => 14,
  "Fifteen" => 15,
  "Sixteen" => 16,
  "Seventeen" => 17,
  "Eighteen" => 18,
  "Nineteen" => 19,
  "Twenty"  => 20,
  "Thirty" => 30,
  "Forty" => 40,
  "Fifty" => 50
}
number_data.each_pair do |key, value|
  color_number_deck.cards.create(name: key, front_content: key, back_content: "<div style='font-size: 150px; line-height: 150px'>#{value}</div>")
end

log "Create some State Capital cards"

data = {
  "Alabama"        => "Montgomery",
  "Alaska"         => "Juneau",
  "Arizona"        => "Phoenix",
  "Arkansas"       => "Little Rock",
  "California"     => "Sacramento",
  "Colorado"       => "Denver",
  "Connecticut"    => "Hartford",
  "Delaware"       => "Dover",
  "Florida"        => "Tallahassee",
  "Georgia"        => "Atlanta",
  "Hawaii"         => "Honolulu",
  "Idaho"          => "Boise",
  "Illinois"       => "Springfield",
  "Indiana"        => "Indianapolis",
  "Iowa"           => "Des Moines",
  "Kansas"         => "Topeka",
  "Kentucky"       => "Frankfort",
  "Louisiana"      => "Baton Rouge",
  "Maine"          => "Augusta",
  "Maryland"       => "Annapolis",
  "Massachusetts"  => "Boston",
  "Michigan"       => "Lansing",
  "Minnesota"      => "Saint Paul",
  "Mississippi"    => "Jackson",
  "Missouri"       => "Jefferson City",
  "Montana"        => "Helena",
  "Nebraska"       => "Lincoln",
  "Nevada"         => "Carson City",
  "New Hampshire"  => "Concord",
  "New Jersey"     => "Trenton",
  "New Mexico"     => "Santa Fe",
  "New York"       => "Albany",
  "North Carolina" => "Raleigh",
  "North Dakota"   => "Bismarck",
  "Ohio"           => "Columbus",
  "Oklahoma"       => "Oklahoma City",
  "Oregon"         => "Salem",
  "Pennsylvania"   => "Harrisburg",
  "Rhode Island"   => "Providence",
  "South Carolina" => "Columbia",
  "South Dakota"   => "Pierre",
  "Tennessee"      => "Nashville",
  "Texas"          => "Austin",
  "Utah"           => "Salt Lake City",
  "Vermont"        => "Montpelier",
  "Virginia"       => "Richmond",
  "Washington"     => "Olympia",
  "West Virginia"  => "Charleston",
  "Wisconsin"      => "Madison",
  "Wyoming"        => "Cheyenne"
}
data.each_pair do |key, value|
  state_capitals_deck.cards.create(name: key, front_content: key, back_content: value)
end

log "Done!"
