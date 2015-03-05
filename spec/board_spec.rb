require 'board'

describe 'board' do

  let(:puzzle)  { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
  let(:board)   { Board.new(:puzzle) }

  context 'when initialized' do

    it 'should have 81 cells' do
      expect(board.cells.count).to eq 81
    end

    it 'should have an unsolved first cell' do
      expect(board.cells[0].has_value?).to be false
    end

    xit 'should have a solved second cell' do
      expect(board.cells[1].has_value?).to be true
      expect(board.cells[1].value).to eq 1
    end

    it 'should map puzzle values to new cells' do
      board.puzzle_value_array(puzzle)
      board.map_puzzle_values(puzzle_value_array)
      expect(board.cells[1].value).to be 1
    end
  end

end