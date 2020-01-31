
class Round
  attr_reader :deck, :turns, :current_card, :card_rotator_number

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = deck.cards[0]
    @cards_answered_correctly = []
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, @current_card)
    turns << new_turn
    if new_turn.correct?
    @cards_answered_correctly << new_turn.card
    end
    deck.cards.shift
    @current_card = deck.cards[0]
    new_turn
  end


  def number_correct
    @cards_answered_correctly.length
  end

  def number_correct_by_category(cat)
     category_count = 0
      @cards_answered_correctly.each do |card|
       if card.category == cat
        category_count += 1
       end
      end
    category_count.to_f
   end

  def percent_correct
  @cards_answered_correctly.length / turns.length.to_f * 100
  end


  def percent_correct_by_category(cat)
    number_cards_in_category = 0
    turns.each do |turn|
    if turn.card.category == (cat)
    number_cards_in_category += 1
    end
    end
    number_correct_by_category(cat)/number_cards_in_category * 100
  end

end
