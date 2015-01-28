class Cell

  attr_accessor :value

  def initialize(value = 0)
    @value = value
  end

  def candidates
    (1..9).to_a
  end

  def has_value?
    value != 0
  end

end