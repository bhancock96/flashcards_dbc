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

class Flashcard
  attr_reader :term, :definition
  def initialize(options = {})
    @term = options[:term]
    @definition = options[:definition]
  end
end


