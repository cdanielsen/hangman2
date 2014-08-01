require 'rspec'
require 'game'
require 'hangman'
require 'wordbank'

describe 'Game' do
  describe 'initialize' do
    it 'creates an instance of the Game class' do
      test_game = Game.new('easy')
      expect(test_game).to be_an_instance_of Game
    end
  end
end

describe 'Hangman' do
  describe 'initialize' do
    it 'creates an instance of the Game class' do
      test_hangman = Hangman.new
      expect(test_hangman).to be_an_instance_of Hangman
    end
  end
end

describe 'WordBank' do
  describe 'initialize' do
    it 'creates an instance of the WordBank class' do
      test_bank = WordBank.new('medium')
      expect(test_bank).to be_an_instance_of WordBank
    end
  end
  describe 'word_in_level' do
    it 'sets the game level and returns a corresponding word' do
      test_bank = WordBank.new('medium')
      expect(test_bank.word_in_level.length > 0).to eq true
    end
  end
  describe 'easy' do
    it 'returns a random word from an array of short words' do
      test_bank = WordBank.new('easy')
      expect(test_bank.easy.length > 0).to eq true
    end
  end
  describe 'medium' do
    it 'returns a random word from an array of short words' do
      test_bank = WordBank.new('medium')
      expect(test_bank.medium.length > 0).to eq true
    end
  end
  describe 'hard' do
    it 'returns a random word from an array of short words' do
      test_bank = WordBank.new('hard')
      expect(test_bank.hard.length > 0).to eq true
    end
  end
end










