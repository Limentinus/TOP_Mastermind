# color methods for String class
class String
  # colorization
  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end

end

# Creates colored pegs
class ColorPegs
  attr_reader :red_peg, :green_peg, :brown_peg, :blue_peg, :magenta_peg, :cyan_peg, :gray_peg, :black_peg

  def initialize
    @red_peg = '⬤'.red
    @green_peg = '⬤'.green
    @brown_peg = '⬤'.brown
    @blue_peg = '⬤'.blue
    @magenta_peg = '⬤'.magenta
    @cyan_peg = '⬤'.cyan
    @gray_peg = '⬤'.gray
    @black_peg = '⬤'.black
  end
end

test = ColorPegs.new
puts test.red_peg
