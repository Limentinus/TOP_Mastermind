# frozen_string_literal: true

require_relative 'display.rb'
require_relative 'human_player.rb'
require_relative 'computer_player.rb'
require_relative 'color_pegs.rb'

class Game
  include Display
  attr_reader :code

  def initialize(codemaker_class, codebreaker_class)
    @codemaker = codemaker_class.new
    @codebreaker = codebreaker_class.new
    @code = @codemaker.make_code
    @colors = ColorPegs.new.colors
    @black = ColorPegs.new.black_peg
    @gray = ColorPegs.new.gray_peg
    @guess = []
    @feedback = []
  end

  def play_game
    @codemaker.make_code
    loop do
      @guess = @codebreaker.guess_code
      guess_colors = make_colors(@guess, @colors)
      make_feedback(@guess)
      print_board(guess_colors, @feedback)
      puts correct_colors(@code, @guess)
      puts correct_place(@guess)
      puts @feedback
      if won?
        puts "Congrats, you guessed the correct code: #{@guess}"
        break
      elsif @guess == ['e','x','i','t']
        break
      else
        puts "That wasn't the correct code, try again."
        puts "guess: #{@guess}"
      end
    end
  end

  def won?
    @code == @guess
  end

  # checks how many colors match the code
  def correct_colors(code, guess)
    correct = 0
    temp_code = code.clone
    temp_guess = guess.clone
    temp_guess.each_index do |index|
      next unless temp_code.include?(temp_guess[index])

      correct += 1
      remove = temp_code.find_index(guess[index])
      temp_code[remove] = '?'
      temp_guess[index] = '?'
    end
    correct
  end

  def correct_place(guess)
    correct = 0
    @code.each_with_index do |letter, index|
      if letter == guess[index]
        correct += 1
      end
    end
    correct
  end

  def make_feedback(guess)
    @feedback = []
    correct_place(guess).times do
      @feedback << @black
    end
    (correct_colors(@code, @guess) - correct_place(guess)).times do
      @feedback << @gray
    end
  end


end

test = Game.new(ComputerPlayer, HumanPlayer)
# puts test.correct_colors(['r', 'r', 'b', 'r'], ['b', 'r', 'r', 'b'])
test.play_game