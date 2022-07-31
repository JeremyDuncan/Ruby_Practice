# Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  attr_reader :symbol
end
