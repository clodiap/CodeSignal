require_relative '../lib/minesweeper'

describe "minesweeper" do
  it "gives the result of the blur algorithm 1" do
    expect(minesweeper([[true,false,false],
                         [false,true,false],
                         [false,false,false]])).to eq([[1,2,1],
                                                       [2,1,1],
                                                       [1,1,1]])
    end

  it "gives the result of the blur algorithm 2" do
    expect(minesweeper([[false,false,false],
                         [false,false,false]])).to eq([[0,0,0],
                         [0,0,0]])
    end

  it "gives the result of the blur algorithm 3" do
    expect(minesweeper([[true,false,false,true],
                         [false,false,true,false],
                         [true,true,false,true]])).to eq([[0,2,2,1],
                                                           [3,4,3,3],
                                                           [1,2,3,1]])
  end
  it "gives the result of the blur algorithm 4" do
    expect(minesweeper([[true,true,true],
                         [true,true,true],
                         [true,true,true]])).to eq([[3,5,3],
                         [5,8,5],
                         [3,5,3]])
  end
  it "gives the result of the blur algorithm 5" do
    expect(minesweeper([[false,true,true,false],
                         [true,true,false,true],
                         [false,false,true,false]])).to eq([[3,3,3,2],
                         [2,4,5,2],
                         [2,3,2,2]])
  end
end
