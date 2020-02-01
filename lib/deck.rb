class Deck
attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end

  def cards_in_category(cat)
   cat_array = []
    @cards.each do |card|
      if card.category == cat
        cat_array << card
      end
    end
    cat_array
  end

end
