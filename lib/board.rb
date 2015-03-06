
class Board

  attr_accessor :cells

  def initialize(puzzle)
    @puzzle = puzzle
    @cells = Array.new(81) { Cell.new }
  end

  def map_puzzle_values(puzzle)
    puzzle_array = puzzle.split('').map { |char| char.to_i }
  end

end