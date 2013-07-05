require_relative 'flashcard_deck.rb'

class Game
  def initialize
    @current_card = []
    @guess = ''
    @deck = Deck.new.load('flashcard_samples.txt')
  end

  def start
    get_flashcard
    puts show_definition
  end

  def get_flashcard
    @current_card = @deck.sample
  end

  def validate_guess
    true if @guess == @current_card.term
  end

  def show_definition
    @current_card.definition
  end

  def show_term
    @current_card.term
  end
end


game = Game.new()


game.start
