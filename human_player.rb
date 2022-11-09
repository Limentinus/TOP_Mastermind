class HumanPlayer
  def initialize
  end

  def guess_code
    array = Array.new(4)
    guess = array.map do |color|
        puts "Guess color"
        gets.chomp
    end
    puts guess
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


test_player = HumanPlayer.new
test_player.guess_code