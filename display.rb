
# displays all the information for the game 
module Display


  def make_colors(color_codes, color_pegs)
    color_array = []
    color_codes.each do |code|
      color_array << color_pegs[code]
    end
    return color_array
  end

  def print_board(guesses, feedback)
    puts "Guesses:  | #{guesses[0]} | #{guesses[1]} | #{guesses[2]} | #{guesses[3]} |"
    puts "Feedback: | #{feedback[0]} | #{feedback[1]} | #{feedback[2]} | #{feedback[3]} |"
  end
end

