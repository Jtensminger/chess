require './piece'

class Bishop < Piece
  attr_reader :color
  def initialize n, color
    @color = color
    @position = Vector[0, 2]
    @position += Vector[0, 3] if n % 2 == 1
    @position += Vector[7, 0] if @color
  end

  def sym
    @color ? "♗" : "♝"
  end

end