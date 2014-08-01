class Game
  def initialize(level)
    @new_man = Hangman.new
    @new_bank = WordBank.new(level)
  end

  def new_man
    @new_man
  end

  def new_bank
    @new_bank
  end
end
