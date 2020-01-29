class Round
attr_reader :deck, :turns, :current_card
  def initialize(deck, turns = [])
    @deck = deck
    @turns = turns
    @current_card = card_1
  end
  #
  # def current_card
  #   deck[1]
  #   require "pry"; binding.pry
  # end

end
