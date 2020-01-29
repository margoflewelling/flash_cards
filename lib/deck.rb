class Deck
attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.count
  end

  def cards_in_category(cat)
    category_count = 0
  @cards.each do |card|
    if card.category == cat
  category_count += 1
    end
  end
  category_count
  end
end
