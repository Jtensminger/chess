require './piece'
class King < Piece
  attr_reader :color
  def initialize color
    @color = color
    @position = Vector[7,4]
    return @position -= Vector[7,1] unless @color
  end

  def valid_moves
    clip [@position + LEFT, @position + RIGHT, @position + UP, @position + DOWN]
  end

  def self.sym
    "♔"
  end

  def self.color_position
    return @position -= Vector[7,1] unless @color
  end
end