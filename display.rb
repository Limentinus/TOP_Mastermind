
# displays all the information for the game 
class Display

  def initialize
  end

  def print_board(guesses, feedback)
    puts "Guesses:  | #{guesses[0]} | #{guesses[1]} | #{guesses[2]} | #{guesses[3]} |"
    puts "Feedback: | #{feedback[0]} | #{feedback[1]} | #{feedback[2]} | #{feedback[3]} |"
  end
end

test_guesses = Array.new(4)
test_feedback = Array.new(4)
test = Display.new

test.print_board(test_guesses, test_feedback)