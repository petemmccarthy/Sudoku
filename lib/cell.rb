class Cell

  attr_accessor :value, :candidates

  def initialize(value = 0)
    @value = value
    @candidates = (1..9).to_a
  end

  def has_value?
    value != 0
  end

  def available_candidates
    @available_candidates = @candidates - taken_candidates
  end

end