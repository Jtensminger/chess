require './piece'
class Knight < Piece
  def initialize(n, color)
    @color = color
    @position = Vector[0, 1]
    @position += Vector[7, 0] if @color
    @position += Vector[0, 5] if n.odd?
  end

  def sym
    @color ? '♘' : '♞'
  end
end
