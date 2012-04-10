def log(message)
  STDOUT.puts message
end

log "Create a couple of decks - Vocabulary and Math"
vocab_deck = PersistencePrefix::Deck.create(name: "K5 Vocabulary")
math_deck = PersistencePrefix::Deck.create(name: "K5 Math")

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

log "Done!"
