 require './piece' 
 class Knight < Piece
  def initialize n, color
    @color = color
    @position = n
  end

  def sym
    @color ? "♘" : "♞"
  end
end