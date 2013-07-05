require_relative 'flashcards'

class Deck
  def initialize
    @deck = []
  end

  def load(filename)
    @headers = ["term", "definition"]
    @source_data = (File.new(filename).read.split("\n") - [""]).each_slice(2).to_a
    @zipped_source_data = @source_data.each do |card_data|
      @headers.zip(card_data)
    end
    @zipped_source_data
  end
end

deck = Deck.new
p deck.load('flashcard_samples.txt')

