require 'matrix'
require './piece'
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

  def piece_at(pos)
    white = @white_pieces.find { |p| p.x == pos[0] && p.y == pos[1] }
    return white if white
    black = @black_pieces.find { |p| p.x == pos[0] && p.y == pos[1] }
    return black if black
  end

  def footer
    '  a b c d e f g h'
  end

  def seperator
    "  ---------------\n"
  end

  def to_s
    str = ''
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
    [true, false].each do |color|
      pieces = []
      pieces << King.new(color)
      pieces << Queen.new(color)
      (0..7).each do |n|
        pieces << Pawn.new(n, color)
      end
      (0..1).each do |n|
        pieces << Knight.new(n, color)
        pieces << Bishop.new(n, color)
        pieces << Rook.new(n, color)
      end

      if color
        @black_pieces = pieces
      else
        @white_pieces = pieces
      end
    end
  end

  def get_move(from, to)
    [Vector[letter_of(from[0]), from[1].to_i], Vector[letter_of(to[0]), to[1].to_i]]
  end

  def letter_of(char)
    char.ord - 'A'.ord
  end
end
