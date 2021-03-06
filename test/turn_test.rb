require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'

class TurnTest < Minitest::Test


  def test_turn_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_instance_of Turn, turn
  end

  def test_turn_card
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal turn.card, card
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal turn.guess, "Juneau"
  end


   def test_correct
     card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
     turn = Turn.new("Juneau", card)
     turn.correct?
     assert_equal turn.correct?, true

     card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
     turn2 = Turn.new("Saturn", card2)
     assert_equal turn2.correct?, false
   end

   def test_feedback
     card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
     turn = Turn.new("Juneau", card)
     turn.feedback
     assert_equal turn.feedback, "Correct!"

     card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
     turn2 = Turn.new("Saturn", card2)
     assert_equal turn2.feedback, "Incorrect."
   end

end
