require 'cell'

describe 'cell' do

  context 'initializing'

  it 'is initialized unsolved' do
    cell = Cell.new
    expect(cell.value).to eq 0
  end

  it 'has a list of candidate values' do
   cell = Cell.new
   expect(cell.candidates).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

end