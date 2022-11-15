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
    @guess = []
    @feedback = []
  end

  def play_game
    @codemaker.make_code
    loop do
      @guess = @codebreaker.guess_code
      guess_colors = make_colors(@guess, @colors)
      print_board(guess_colors, @feedback)
      puts correct_colors(@guess)
      puts correct_place(@guess)
      if won?
        puts "Congrats, you guessed the correct code: #{@guess}"
        puts @code
        break
      elsif @guess == ['e','x','i','t']
        break
      else
        puts "That wasn't the correct code, try again."
        puts @code
      end
    end
  end

  def won?
    @code == @guess
  end

  def correct_colors(guess)
    # method determins if a color code is pressent in the @code and then counts it
    4 - @code.difference(guess).size
  end

  def correct_place(guess)
    correct = 0
    @code.each_with_index do |letter, index|
      if letter == guess[index]
        correct += 1
      end
    end
    return correct
  end


end

test = Game.new(ComputerPlayer, HumanPlayer)
test.play_game