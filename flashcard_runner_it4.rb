require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'
require './lib/card_generator'

def start

  card_1 = Card.new("What does Phoebe eat?", "trash", :Phoebe)
  card_2 = Card.new("What color sweater does Odie look best in?", "green", :Odie)
  card_3 = Card.new("Who was Janis named after?", "janis joplin", :Other)
  card_4 = Card.new("Who pooped in Margo's room?", "albus", :Other)
  card_5 = Card.new("What dog does Louise hate?", "plum", :Other)
  card_6 = Card.new("What will Phoebe's 15th party party theme be?", "chicken and waffles", :Phoebe)
  card_7 = Card.new("What is Odie's hobby?", "agility", :Odie)
  cards = [card_1, card_2, card_3, card_4, card_5, card_6, card_7]
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
