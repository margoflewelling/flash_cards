
class Round
attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end


  def current_card
    deck.cards[0]
  end

#
# The take_turn method is the crux of this problem.
# The take_turn method takes a string representing the guess.
#  It should create a new Turn object with the appropriate
#  guess and Card. It should store this new Turn, as well as
#  return it from the take_turn method. Also, when the take_turn
#  method is called, the Round should move on to the next card in the deck.

  def take_turn(guess)
    # cards_answered_correctly = []
    new_turn = Turn.new(guess, deck.cards[0])
    turns << new_turn
    new_turn
    require "pry"; binding.pry
    # if new_turn.correct?
    #  cards_answered_correctly << new_turn.card
    end
  end

  # def number_correct
  #   number_right = cards_answered_correctly.length
     # puts number_right
  # end

  # def number_correct_by_category(cat)
  #    category_count = 0
  #     cards_answered_correctly.each do |card|
  #     if card.category == cat
  #       category_count += 1
  #     end
  #   end
  #   category_count
  # end
  #
  #
  # def percent_correct
  #   cards_answered_correctly.length / cards.count * 100
  # end
  #
  # def percent_correct_by_category(cat)
  #   number_correct_by_category(cat)/cards_in_category(cat) * 100
  # end





  # The take_turn method is the crux of this problem.
  # The take_turn method takes a string representing the guess.
  #  It should create a new Turn object with the appropriate guess and Card.
  #  It should store this new Turn, as well as return it from the take_turn method.
  #  Also, when the take_turn method is called,
  #  the Round should move on to the next card in the deck.
