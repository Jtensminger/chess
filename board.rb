require 'matrix'
require './king'
require './queen'
require './pawn'
require './rook'
class Board

  def initialize
    @pieces = []

    @pieces << King.new(true)
    @pieces << King.new(false)
    @pieces << Queen.new(true)
    @pieces << Queen.new(false)

    (0..7).each do |n|
      @pieces << Pawn.new(n,true)
      @pieces << Pawn.new(n,false)
    end

    (0..1).each do |n|
      @pieces << Rook.new(n,true)
      @pieces << Rook.new(n,false)
    end

  end


  def generate
    board = []
    8.times do
      row = []
      8.times do 
        row << '_'
      end
      board << row
    end
    @pieces.each do |p|
      board[p.x][p.y] = p.sym
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