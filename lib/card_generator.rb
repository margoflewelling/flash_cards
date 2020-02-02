require './card'

class CardGenerator

  reading_in_cards = []
  question_answer_category = []
    filename = File.open("cards.txt").each do |line|
      line = line[0..-2]
      reading_in_cards << line
    end

    reading_in_cards.each do |card|
    question_answer_category << card.split(",")
    end

    cards = []
    question_answer_category.each do |card|
    cards << Card.new(card[0], card[1], card[2])
    require "pry"; binding.pry
    end

end
