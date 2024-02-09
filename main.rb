# a class for the board
# create variable for each tile
# loop over each players turn until match end
# each time player add char
# put ASCII representation of board
# if row/column full of one char
# end the game

match_end = false

class Board
  def initialize
    @tiles = { 1 => 1, 2 => 2, 3 => 3,
               4 => 4, 5 => 5, 6 => 6,
               7 => 7, 8 => 8, 9 => 9 }
  end

  def display_board
  puts "|#{@tiles[1]}|#{@tiles[2]}|#{@tiles[3]}|
|#{@tiles[4]}|#{@tiles[5]}|#{@tiles[6]}|
|#{@tiles[7]}|#{@tiles[8]}|#{@tiles[9]}|"
  end

  def add_x(tile)
    @tiles[tile] = 'x'
    display_board
  end

  def add_o(tile)
    @tiles[tile] = 'o'
    display_board
  end
end

board = Board.new

while match_end == false
  puts 'P1 turn'
  board.add_x(gets.chomp.to_i)
  puts 'P2 turn'
  board.add_o(gets.chomp.to_i)
end
