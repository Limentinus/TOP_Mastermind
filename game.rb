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
        if won?(@codemaker.code, @guess) 
            puts "Congrats, you guessed the correct code: #{@guess}"
            break
        elsif @guess == ['e','x','i','t']
            break
        else puts "That wasn't the correct code, try again."
        end
    end
  end

  def won?(code, guess)
    puts code == guess
  end
end

test = Game.new(ComputerPlayer, HumanPlayer)
test.play_game