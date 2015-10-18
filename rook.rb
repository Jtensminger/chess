require './piece'
class Rook < Piece
  attr_reader :color
  def initialize(n, color)
    @color = color
    if @color
      @position = Vector[7, n - 1]
    else
      @position = Vector[0, n - 1]
    end
  end

  def sym
    @color ? '♖' : '♜'
  end
end
