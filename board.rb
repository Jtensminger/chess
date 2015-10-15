require 'matrix'
require './king'
require './queen'
require './pawn'
class Board

  def initialize
    @pieces = [King.new(true),King.new(false),Queen.new]
    (0..7).each {|n| @pieces << Pawn.new(n)}
  end


  def generate
    board = []
    8.times do
      row = []
      8.times do 
        row << Piece.sym
      end
      board << row
    end
    @pieces.each do |p|
      board[p.x][p.y] = p.class.sym
    end
    board
  end 

  def footer
    "  a b c d e f g h"
  end

  def seperator
    "  ---------------\n"
  end

  def to_s
    str = ""
    decr = 8
    generate.each do |row|
      str << "#{decr}|"
      str << row.join(' ')
      str << "\n"
      decr -= 1
    end
    str << seperator
    str << footer
  end
end