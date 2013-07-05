require_relative('flashcards')

class Deck
  attr_reader :deck

  def initialize
    @deck = []
  end

  def load(filename)
    @headers = [:definition, :term]
    @source_data = (File.new(filename).read.split("\n") - [""]).each_slice(2).to_a
    @source_data.each do |card_data|
      @deck << Flashcard.new(Hash[@headers.zip(card_data)])
    end
    @deck
  end
end


flashdeck = Deck.new
flashdeck.load('flashcard_samples.txt')
p flashdeck.deck
