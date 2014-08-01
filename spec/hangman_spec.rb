require 'rspec'
require 'game'

describe 'Game' do
  describe 'initialize' do
    it 'creates an instance of the Game class' do
      test_game = Game.new
      expect(test_game).to be_an_instance_of Game
    end
  end
end
