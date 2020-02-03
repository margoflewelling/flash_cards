
class CardGenerator
attr_reader :cards, :filename

  def initialize(filename)
    @filename = filename
    @cards = generate_cards

  end

  def generate_cards
  reading_in_cards = []
  question_answer_category = []
    File.open(@filename).each do |line|
      line = line[0..-2]
      reading_in_cards << line
    end

    reading_in_cards.each do |card|
    question_answer_category << card.split(", ")
    end

    cards = []
    question_answer_category.each do |card|
    cards << Card.new(card[0], card[1], card[2])
    end

    cards
 end


end
