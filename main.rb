# a class for the board
# create variable for each tile
# players add char by methods
# each time player add char
# put ASCII representation of board
# if row/column full of one char
# end the game


class Board
def initialize
  @tiles = {one: 1, two: 2, three: 3, 
          four: 4, five: 5, six: 6,
          seven: 7, eight: 8, nine: 9}
end

def display_board
puts "|#{@tiles[:one]}|#{@tiles[:two]}|#{@tiles[:three]}|
|#{@tiles[:four]}|#{@tiles[:five]}|#{@tiles[:six]}|
|#{@tiles[:seven]}|#{@tiles[:eight]}|#{@tiles[:nine]}|"
end

def add_x(tile)
  @tiles[tile] = "x"
  display_board
end

def add_o(tile)
  @tiles[tile] = "o"
  display_board
end
end

board = Board.new
board.add_x(:one)
