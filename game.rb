require './board'
require 'pry'
class Game
  def initialize
    @board = Board.new
  end

  def go
    loop do
      puts @board
      start, delta = get_move # [Vector[0,0], Vector[0,5]]
      @board.piece_at(start).move(delta)
    end
  end

  def get_move
    puts 'What piece do you want to move?'
    from = gets.chomp
    puts 'Where do you want move to?'
    to = gets.chomp
    @board.get_move(from, to)
  end
end
