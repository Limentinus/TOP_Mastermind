require_relative 'display.rb'
require_relative 'human_player.rb'
require_relative 'computer_player.rb'

class Game
    attr_reader :code

  def initialize(codemaker_class, codebreaker_class)
    @codemaker = codemaker_class.new
    @codebreaker = codebreaker_class.new
    @code = @codemaker.make_code
  end

  def play_game
    @codemaker.make_code
    loop do
        # print_board
        guess = @codebreaker.guess_code
        if won?(@codemaker.code, guess) 
            puts "Congrats, you guessed the correct code: #{guess}"
            break
        elsif guess == "exit"
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
test.print_board