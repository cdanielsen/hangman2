class Game
  def initialize(level)
    @level = level
    @new_man = Hangman.new
  end

  def level
    @level
  end

  def new_man
    @new_man
  end
end
