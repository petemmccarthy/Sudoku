class Board

  attr_accessor :cells

  def initialize(puzzle)
    @cells = Array.new(81) { Cell.new }
  end

end