require 'matrix'
require 'pry'
class Piece
  UP = Vector[-1, 0]
  DOWN = Vector[1, 0]
  LEFT = Vector[0, -1]
  RIGHT = Vector[0, 1]

  def initialize(color)
    @color = color
  end

  def name
    self.class.to_s
  end

  def valid_moves
    []
  end

  def clip(_moves)
    # removes impossible things
  end

  def move(delta)
    binding.pry
    @position += delta
  end

  def x
    @position[0]
  end

  def y
    @position[1]
  end
end
