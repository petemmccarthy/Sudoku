require 'cell'

describe 'cell' do

  let(:cell)          { Cell.new }
  let(:solved_cell)   { Cell.new(5) }

  context 'initializing' do
    it 'is initialized with no value' do
      expect(cell.value).to eq 0
    end

    it 'has a list of possible candidates' do
     expect(cell.candidates).to eq (1..9).to_a
    end

    it 'can be given a value at initialization' do
      new_cell = Cell.new (1)
      expect(new_cell.value).to eq 1
    end

    it 'should have an empty list of neighbours' do
      expect(cell.neighbours).to be_empty
    end
  end

  context 'solving' do

    it 'knows if it has a value' do
      expect(cell.has_value?).to be false
      expect(solved_cell.has_value?).to be true
    end

    it 'can be given a value' do
      cell.value = 9
      expect(cell.value).to eq 9
    end

    it 'knows what its value is' do
      expect(solved_cell.value).to eq 5
    end

    it 'knows what candidates are remaining' do
      cell.neighbours = [Cell.new(1), Cell.new(2), Cell.new(3)]
      cell.remaining_candidates
      expect(cell.candidates).to eq [4, 5, 6, 7, 8, 9]
    end

    it 'can solve itself if only one empty value remains' do
      cell.candidates = [3]
      cell.solve
      expect(cell.value).to eq 3
    end

    it 'raises exception if you try to solve a cell with a value' do
      expect(solved_cell.solve).to raise "Cell already has a value"
    end
  end

end