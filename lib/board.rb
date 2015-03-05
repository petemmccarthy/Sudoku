class Board

  attr_accessor :cells

  def initialize(puzzle)
    @puzzle = puzzle
    @cells = Array.new(81) { Cell.new }
  end

  def map_puzzle_values(puzzle)

  end

end