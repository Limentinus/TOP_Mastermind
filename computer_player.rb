require_relative 'color_pegs.rb'

class ComputerPlayer
  attr_reader :code, :colors
  def initialize
    @colors = ColorPegs.new.colors
  end

  def make_code
    code = []
    4.times do 
      code << @colors.keys.sample
    end
    code
  end

  def guess_code
    
  end
end
