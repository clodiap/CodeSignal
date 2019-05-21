require_relative '../lib/chessBoardCellColor'

describe "chessBoardCellColor" do
  it "Given two cells on the standard chess board, determine whether they have the same color" do
    expect(chessBoardCellColor("A1","C3")).to be(true)
    expect(chessBoardCellColor("A1","B2")).to be(true)
    expect(chessBoardCellColor("G5","E7")).to be(true)
    expect(chessBoardCellColor("D2","D2")).to be(true)
  end
  it "Given two cells on the standard chess board, determine whether they have not the same color" do
    expect(chessBoardCellColor("A1","H3")).to be(false)
    expect(chessBoardCellColor("A1","A2")).to be(false)
    expect(chessBoardCellColor("B3","H8")).to be(false)
    expect(chessBoardCellColor("C3","B5")).to be(false)
    expect(chessBoardCellColor("C8","H8")).to be(false)
    expect(chessBoardCellColor("A2","A5")).to be(false)
  end
end
