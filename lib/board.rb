class Board

  attr_accessor :cells

  def initialize(puzzle)
    @puzzle = puzzle
    @cells = Array.new(81) { Cell.new }
  end

  def puzzle_value_array(puzzle)
    puzzle.split("").map { |val| val.to_i }
  end

end