require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'


# Create some Cards
# Put those card into a Deck
# Create a new Round using the Deck you created
# Start the round using a new method called start

card_1 = Card.new("What does Phoebe eat?", "Trash", :Phoebe)
card_2 = Card.new("What color sweater does Odie look best in?", "Green", :Odie)
card_3 = Card.new("Who was Janis named after?", "Janis Joplin", :Other)
cards = [card_1, card_2, card_3]
deck = Deck.new(cards)
round = Round.new(deck)

puts "Welcome! You're playing with #{cards.count} cards."
puts "------------------------------------------"
puts "This is card number 1 out of #{cards.count}."


def start
puts @current_card.question
guess = gets.chomp
take_turn(guess)
end

start
