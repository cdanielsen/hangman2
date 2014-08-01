require './lib/game'

@new_game

def welcome
  puts "Welcome to Hangman!"
  puts "Choose Easy, Medium, or Hard"
  level = gets.chomp
  @new_game = Game.new(level)
end

def main_menu

