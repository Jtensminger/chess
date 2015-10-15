require './piece'
class Pawn < Piece
  attr_reader :color
  def initialize n, color
    @color = color
    if @color
      @position = Vector[6,n]
    else
      @position = Vector[1,n]
    end
  end

  def sym
    @color ? "♙" : "♟"
  end

end