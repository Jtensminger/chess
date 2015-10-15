require './piece'

class Bishop < Piece
  attr_reader :color
  def initialize n, color
    @color = color
    @position = n
  end

  def sym
    @color ? "♗" : "♝"
  end

end