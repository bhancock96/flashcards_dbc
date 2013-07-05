class Deck
  def initialize
    @deck = []
  end

  def load(filename)
    @source_data = File.new(filename)
    (@source_data.read.split("\n") - [""]).each_slice(2).to_a
    @headers = ["term", "definition"]
  end
end

deck = Deck.new
p deck.load('flashcard_samples.txt')

