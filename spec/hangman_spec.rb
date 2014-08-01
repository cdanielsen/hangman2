require 'rspec'
require 'game'
require 'hangman'

describe 'Game' do
  describe 'initialize' do
    it 'creates an instance of the Game class' do
      test_game = Game.new('easy')
      expect(test_game).to be_an_instance_of Game
      expect(test_game.level).to eq 'easy'
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
