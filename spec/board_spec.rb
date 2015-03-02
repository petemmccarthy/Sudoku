require 'board'
require 'cell'

describe 'board' do

  let(:puzzle)  { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
  let(:board)   { Board.new(:puzzle) }

  context 'when initialized' do

    it 'should have 81 cells when initialized' do
      expect(board.cells.count).to eq 81
    end

    xit 'should have an unsolved first cell' do

    end

    xit 'should have a solved second cell' do
      
    end
  end

end