require './piece'
class King < Piece
  def initialize
    @position = Vector[7,3]
  end

  def valid_moves
    clip [@position + LEFT, @position + RIGHT, @position + UP, @position + DOWN]
  end
end