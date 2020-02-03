require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'
require './lib/card_generator'

def start

  cardgenerator = CardGenerator.new("./lib/cards.txt")
  cards = cardgenerator.cards
  deck = Deck.new(cards)
  round = Round.new(deck)

  puts "Welcome! You're playing with #{cards.count} cards."
  puts "------------------------------------------"
  total_cards = cards.count

  all_categories = []
  cards.each do |card|
    all_categories << card.category
  end
  unique_categories = all_categories.uniq

    starting = 1
    while starting <= total_cards
      puts "This is card number #{starting} out of #{total_cards}"
      puts round.current_card.question
      guess = gets.chomp
      new_turn = round.take_turn(guess)
      puts new_turn.feedback
      starting += 1
    end

    puts "***** Game Over! *****"
    puts "You had #{round.number_correct} correct guesses out of #{total_cards} for a total score of #{round.percent_correct}."

  unique_categories.each do |category|
     puts "#{category} - #{round.percent_correct_by_category(category)} correct"
  end

end

start
