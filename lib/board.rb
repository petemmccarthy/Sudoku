
class Board

  attr_accessor :cells

  def initialize(puzzle)
    @cells = Array.new(81) { Cell.new }
    map_puzzle_values(puzzle)
  end

  def map_puzzle_values(puzzle)
    puzzle_value_array = make_puzzle_array(puzzle)
    puzzle_value_array.map { |val| cells[val].value = puzzle_value_array[val] }
  end

  def make_puzzle_array(puzzle)
    puzzle.split('').map { |char| char.to_i }
  end

end