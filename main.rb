# a class for the board
# create variable for each tile
# players add char by methods
# each time player add char
# put ASCII representation of board
# if row/column full of one char
# end the game


class Board
  def initialize
  @tiles = {one: "..", two: "..", three: "..", 
          four: "..", five: "..", six: "..",
          seven: "..", eight: "..", nine: ".."}
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
    end
end

board = Board.new
board.add_x(:one)
