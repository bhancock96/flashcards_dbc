require_relative('flashcard_deck')

class Game
  def initialize(deck)
    @current_card = []
    @guess = ''
    @deck = deck
  end

  def start
    get_flashcard
    puts show_definition
  end

  def get_flashcard
    @current_card = @deck[rand(@deck.size)]
  end

  def validate_guess
    true if @guess == @current_card[:term]
  end

  def respond_to_user_guess

  end

  def show_definition
    @current_card[:definition]
  end

  def show_term
    @current_card[:term]
  end
end

class Flashcard
  def initialize(options = {})
    @term = options[:term]
    @definition = options[:definition]
  end
end

