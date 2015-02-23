require 'board'

describe 'board' do

  it 'should have 81 cells when initialized' do
    expect(board.cells.count).to eq 81
  end

end