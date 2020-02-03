require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/card'


class CardGeneratorTest < Minitest::Test

  def test_is_exists
    cardgenerate = CardGenerator.new("./lib/cards.txt")
    assert_instance_of CardGenerator, cardgenerate
  end

  def test_filename
    cardgenerate = CardGenerator.new("./lib/cards.txt")
    assert_equal "./lib/cards.txt", cardgenerate.filename
  end

  def test_it_has_cards
    card_1 = Card.new("What does Phoebe eat?", "trash", "Phoebe")
    cardgenerate = CardGenerator.new("./lib/cards.txt")
    assert_equal card_1, cardgenerate.cards[0]
  end

end
