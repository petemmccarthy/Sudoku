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

end