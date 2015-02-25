require 'cell'

describe 'cell' do

  let(:cell)          { Cell.new }
  let(:solved_cell)   { Cell.new(5) }

  context 'initializing' do
    it 'is initialized with no value' do
      expect(cell.value).to eq 0
    end

    it 'has a list of candidate values' do
     expect(cell.candidates).to eq (1..9).to_a
    end

    it 'can be gievn a value at initialization' do
      new_cell = Cell.new (1)
      expect(new_cell.value).to eq 1
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
      expect(cell.available_candidates).to eq [1, 2, 3, 4, 6, 7, 8, 9]
    end
  end

end