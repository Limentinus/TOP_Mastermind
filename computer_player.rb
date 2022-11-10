require_relative 'color_pegs.rb'

class ComputerPlayer
  attr_reader :code, :colors
  def initialize
    @code = []
    @colors = ColorPegs.new.colors
  end

  def make_code
    4.times do 
      @code << @colors.sample
    end  
  end

  def guess_code
    
  end
end

test = ComputerPlayer.new
test.make_code
puts test.code

