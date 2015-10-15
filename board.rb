require 'matrix'
require './king'
require './queen'
require './pawn'
require './rook'
require './bishop'
require './knight'

class Board

  def initialize
    @white_pieces = []
    @black_pieces = []
    setup_pieces
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
    @white_pieces.each do |p|
      board[p.x][p.y] = p.sym
    end
    @black_pieces.each do |p|
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

  def setup_pieces
    @white_pieces << King.new(true)
    @black_pieces << King.new(false)
    @white_pieces << Queen.new(true)
    @black_pieces << Queen.new(false)
    @black_pieces << Bishop.new(0, false)
    @black_pieces << Bishop.new(1, false)
    @white_pieces << Bishop.new(0, true)
    @white_pieces << Bishop.new(1, true)
    @black_pieces << Knight.new(Vector[0,1], false)
    @black_pieces << Knight.new(Vector[0,-2], false)
    @white_pieces << Knight.new(Vector[7,1], true)
    @white_pieces << Knight.new(Vector[7,-2], true)
    (0..7).each do |n|
      @white_pieces << Pawn.new(n,true)
      @black_pieces << Pawn.new(n,false)
    end

    (0..1).each do |n|
      @white_pieces << Rook.new(n,true)
      @black_pieces << Rook.new(n,false)
    end
  end

    def place piece
      
    end

end