require_relative 'flashcard_deck.rb'

class Game
  attr_accessor :guess
  def initialize
    puts "Enter file name, dude."
    file_name = gets.chomp
    @current_card = []
    @guess = ''
    @deck = Deck.new.load("#{file_name}")
  end

  def start 
    get_flashcard
    puts show_definition
    until @guess == 'exit'
      puts "Enter your guess:"
      @guess = gets.chomp
      break if @guess == 'skip'
      if validate_guess
        puts "Good guess"
        get_flashcard
        puts show_definition
      end
      @current_card.number_of_guesses += 1

      if @guess == "get guess number"
        get_number_of_guesses
      end
    end
  end

  def get_number_of_guesses
    puts "Which flashcard term do you want to look up?"
    user_input = gets.chomp
    puts @deck.find { |flashcard| flashcard.term == user_input}.number_of_guesses
  end

  def get_flashcard
    @current_card = @deck.sample
    #@current_card = @deck.sort_by {|card| card.number_of_guesses}.pop
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

 until game.guess == 'exit'
  game.start
 end

