require './lib/game'
require './lib/hangman'
require './lib/wordbank'
require 'pry'

@new_game
@level

def welcome
  puts "Welcome to Hangman!"
  puts "Choose Easy, Medium, or Hard"
  @level = gets.chomp
  @new_game = Game.new(@level)
  main_menu
end

def main_menu
  puts @new_game.new_man.state_of_man[0]
  selected_word = @new_game.new_bank.level
  puts selected_word
end

welcome
