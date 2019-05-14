require_relative '../lib/arrayReplace'

describe "arrayReplace" do
  it "adds a border of asterisks" do
    expect(arrayReplace([1, 2, 1],1,3)).to eq([3, 2, 3])
    expect(arrayReplace([1, 2, 3, 4, 5],3,0)).to eq([1, 2, 0, 4, 5])
    expect(arrayReplace([1, 1, 1],1,10)).to eq([10, 10, 10])
    expect(arrayReplace([1, 2, 1, 2, 1],2,2)).to eq([1, 2, 1, 2, 1])
    expect(arrayReplace([3, 1],3,9)).to eq([9, 1])
    expect(arrayReplace([10, 10],0,9)).to eq([10,10])
  end
end
