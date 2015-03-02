class Cell

  attr_accessor :value, :candidates, :neighbours

  def initialize(value = 0)
    @value = value
    @candidates = (1..9).to_a
    @neighbours = []
  end

  def has_value?
    value != 0
  end

  def remaining_candidates
    neighbours.each { |cell| candidates.delete(cell.value) }
  end

  def solve
     if @value > 0
      raise "Cell already has a value"
     end
      remaining_candidates
      @value = candidates.pop if candidates.length == 1
  end

end