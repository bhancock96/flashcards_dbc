class Game
  def start
  end

  def get_flashcard
  end

  def validate_guess
  end

  def respond_to_user_guess
  end

  def show_definition
  end
end

class Flashcard
  def initialize(options = {})
    @term = options[:term]
    @definition = options[:definition]
  end
end

