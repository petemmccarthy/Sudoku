require 'cell'

describe 'cell' do

  let(:cell)  { Cell.new }

  context 'initializing' do

    it 'is initialized unsolved' do
      expect(cell.value).to eq 0
    end

    it 'has a list of candidate values' do
     expect(cell.candidates).to eq (1..9).to_a
    end
  end

  context 'solving' do

    it 'knows if it has a value' do
      solved_cell = Cell.new(5)
      expect(cell.has_value?).to be false
      expect(solved_cell.has_value?).to be true
    end

  end

end