require './piece'
class King < Piece
  attr_reader :color
  def initialize(color)
    @color = color
    if @color
      @position = Vector[7, 4]
    else
      @position = Vector[0, 3]
    end
  end

  def valid_moves
    clip [@position + LEFT, @position + RIGHT, @position + UP, @position + DOWN]
  end

  def sym
    @color ? '♔' : '♚'
  end
end
