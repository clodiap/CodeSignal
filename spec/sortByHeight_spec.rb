require_relative '../lib/sortByHeight'

describe "sortByHeight" do
  it "rearrange the people by their heights in a non-descending order without moving the trees." do
    expect(sortByHeight([-1, 150, 190, 170, -1, -1, 160, 180])).to eq([-1, 150, 160, 170, -1, -1, 180, 190])
    expect(sortByHeight([-1, -1, -1, -1, -1])).to eq([-1, -1, -1, -1, -1])
    expect(sortByHeight([-1])).to eq([-1])
    expect(sortByHeight([4, 2, 9, 11, 2, 16])).to eq([2, 2, 4, 9, 11, 16])
    expect(sortByHeight([2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1])).to eq([1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2])
    expect(sortByHeight([23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3])).to eq([1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77])
  end
end
