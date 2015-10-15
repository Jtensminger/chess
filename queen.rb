require './piece'
class Queen < Piece
  def initialize
    @position = Vector[7,3]
  end

  def self.sym
    "♕"
  end
  
end