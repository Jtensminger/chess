require './piece'
class Pawn < Piece
  def initialize n
    @position = Vector[6,n]
  end

  def self.sym
    "♙"
  end
end