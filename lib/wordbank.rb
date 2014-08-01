class WordBank
  def initialize(level)
    @level = level
  end

  def level
    if @level == "easy"
      self.easy
    elsif @level == "medium"
      self.medium
    else
      self.hard
    end
  end

  def easy
    easy_words = ['cat', 'dog', 'chicken', 'monkey']
    mystery_num = Random.new
    random_easy = easy_words[mystery_num.rand(easy_words.length-1)]
  end

  def medium
    medium_words = ['dolphin', 'baboon', 'elephant', 'giraffe']
    mystery_num = Random.new
    random_medium = medium_words[mystery_num.rand(medium_words.length-1)]
  end

  def hard
    hard_words = ['aardvark', 'orangutan', 'rhinoceros', 'wombat']
    mystery_num = Random.new
    random_hard = hard_words[mystery_num.rand(hard_words.length-1)]
  end
end
