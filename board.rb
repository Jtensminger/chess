require 'matrix'
require './king'
class Board

  def initialize
    generate_board
    @pieces = []
  end


  def generate_board
    rank = '+ - + - + - + -'
    (1..8).each do |row|
        if row % 2 == 0
          puts "#{row}| #{rank}"
        else
          puts "#{row}| #{rank.reverse}"
        end
    end
    puts seperator
    puts footer
  end 

  def footer
    "   a b c d e f g h"
  end

  def seperator
    "  ----------------"
  end
end