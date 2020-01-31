require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'


# Create some Cards
# Put those card into a Deck
# Create a new Round using the Deck you created
# Start the round using a new method called start
def start

card_1 = Card.new("What does Phoebe eat?", "Trash", :Phoebe)
card_2 = Card.new("What color sweater does Odie look best in?", "Green", :Odie)
card_3 = Card.new("Who was Janis named after?", "Janis Joplin", :Other)
cards = [card_1, card_2, card_3]
deck = Deck.new(cards)
round = Round.new(deck)

puts "Welcome! You're playing with #{cards.count} cards."
puts "------------------------------------------"
total_cards = cards.count

 deck.cards.each do |card|
  puts "This is card number x out of #{total_cards}"
 puts card.question
 guess = gets.chomp
 new_turn = round.take_turn(guess)
 puts new_turn.feedback
 end

 puts "***** Game Over! *****"
 puts "You had correct guesses out of #{total_cards} for a total score of #{round.percent_correct}."
end

start
