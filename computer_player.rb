class ComputerPlayer
  def initialize
    @code = []
    @colors = [r, g, y, b, m, c]
  end

  def make_code
    4.times do 
      @code << @colors.sample
    end  
  end

  def guess_code
    
  end
end