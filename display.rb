
# displays all the information for the game 
module Display

  # def black
  # "\e[30m#{self}\e[0m" 
  # end

  # def red            
  #   "\e[31m#{self}\e[0m" 
  # end

  # def green          
  #   "\e[32m#{self}\e[0m" 
  # end
  # def yellow
  #   "\e[33m#{self}\e[0m"
  # end

  # def blue
  #   "\e[34m#{self}\e[0m"
  # end

  # def magenta
  #   "\e[35m#{self}\e[0m"
  # end

  # def cyan
  #   "\e[36m#{self}\e[0m"
  # end

  # def gray
  #   "\e[37m#{self}\e[0m"
  # end

  def print_board(guesses, feedback)
    puts "Guesses:  | #{guesses[0]} | #{guesses[1]} | #{guesses[2]} | #{guesses[3]} |"
    puts "Feedback: | #{feedback[0]} | #{feedback[1]} | #{feedback[2]} | #{feedback[3]} |"
  end
end

# test_guesses = Array.new(4)
# test_feedback = Array.new(4)
# test = Display.new

# test.print_board(test_guesses, test_feedback)