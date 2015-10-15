require './piece'
class Queen < Piece
  attr_reader :color
  def initialize color
    @color = color
    if @color
      @position = Vector[7,3]
    else
      @position = Vector[0,4]
    end
  end

  def sym
    @color ? "♕" : "♛"
  end
end