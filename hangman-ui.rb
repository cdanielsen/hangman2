require './lib/game'
require './lib/hangman'
require './lib/wordbank'
require 'pry'

@new_game
@level = ""
@bad_guess = 0
@selected_word
@bad_letters = []
@hidden_word = []

def welcome
  clear
  system('clear')
  puts "Welcome to Hangman!"
  puts "Choose easy, medium, or hard"
  @level = gets.chomp
  if @level == "easy" || @level == "medium" || @level == "hard"
    puts "Great choice!"
    sleep(1)
    @new_game = Game.new(@level)
    @selected_word = @new_game.new_bank.word_in_level.split('')
    1.upto(@selected_word.length) do
      @hidden_word << "_"
    end
    main_menu
  else
    puts "Not a valid choice!"
    sleep(3)
    welcome
  end
end

def clear
  @bad_letters = []
  @hidden_word = []
  @selected_word = []
  @bad_guess = 0
  @level = ""
end

def main_menu
  until @selected_word == @hidden_word do
    system('clear')
    puts @new_game.new_man.state_of_man[@bad_guess]
    puts "\n"
    puts "Used letters: " + @bad_letters.join('')
    puts "\n"
    puts @hidden_word.join('')
    puts "Guess a letter!"
    guess = gets.chomp
    if @selected_word.include?(guess)
      @selected_word.each_with_index do |letter, i|
        if letter == guess
          @hidden_word[i] = guess
        end
      end
    else
      @bad_letters << guess
      @bad_guess += 1
    end
    if @bad_guess == 8
      puts "You lose!! Type Y to play again or any other key to exit"
      decision = gets.chomp
      if decision == "Y"
      welcome
      else
      exit
      end
    end
  end
  puts "You win!! Type Y to play again or any other key to exit"
  decision = gets.chomp
  if decision == "Y"
  welcome
  end
end

welcome
