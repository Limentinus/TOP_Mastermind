class HumanPlayer
  def initialize
  end

  def guess_code
    puts "Guess 4 colors using the color codes. To exit the game type exit."
    puts "r: red, g: green, b: blue, y: yellow, m: magenta, c: cyan"
    guess = gets.chomp
    return guess.split('')
  end

  def make_code
    array = Array.new(4)
    code = array.map do |color|
        puts "Make the code"
        gets.chomp
    end
    puts code
  end
end


# test_player = HumanPlayer.new
# test_player.guess_code