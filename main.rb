# a class for the board
# create variable for each tile
# loop over each players turn until match end
# each time player add char
# put ASCII representation of board
# if row/column full of one char
# end the game
# create method
# if 1 && 2 && 3 = x || 4 && 5 && 6 = x || 7 && 8 && 9 = X || 1 && 4 && 7 = x 
# || 2 && 5 && 8 = x || 3 && 6 && 9 = x || 1 && 5 && 8 = x || 3 && 5 && 7 = x
# match_end = true

match_end = false

class Board
  attr_accessor :tiles

  private

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

  @@win_combs = [
   [1, 2, 3], [4, 5, 6], [7, 8, 9], # Rows
   [1, 4, 7], [2, 5, 8], [3, 6, 9], # Columns
   [1, 5, 9], [3, 5, 7]             # Diagonals
  ]

  public

  def check_win(player)
    @@win_combs.any? do |comb|
      comb.all? {|tile| @tiles[tile] == player}
    end
  end

  def add_x(tile)
    while @tiles[tile] == 'O' || @tiles[tile] == 'X' || tile >= 10 || tile < 1
      puts 'invalid position'
      tile = gets.chomp.to_i
    end
    @tiles[tile] = 'X'
    display_board
  end

  def add_o(tile)
    while @tiles[tile] == 'O' || @tiles[tile] == 'X' || tile >= 10 || tile < 1
      puts 'invalid position'
      tile = gets.chomp.to_i
    end
    @tiles[tile] = 'O'
    display_board
  end
end

board = Board.new

while match_end == false
  puts 'P1 turn'
  board.add_x(gets.chomp.to_i)
  match_end = board.check_win('X')
  break if match_end

  puts 'P2 turn'
  board.add_o(gets.chomp.to_i)
  match_end = board.check_win('O')
end
