require_relative '../lib/arrayMaximalAdjacentDifference'

describe "arrayMaximalAdjacentDifference" do
  it "Given an array of integers, find the maximal absolute difference between any two of its adjacent elements" do
    expect(arrayMaximalAdjacentDifference([2, 4, 1, 0])).to eq(3)
    expect(arrayMaximalAdjacentDifference([1, 1, 1, 1])).to eq(0)
    expect(arrayMaximalAdjacentDifference([-1, 4, 10, 3, -2])).to eq(7)
    expect(arrayMaximalAdjacentDifference([10, 11, 13])).to eq(2)
    expect(arrayMaximalAdjacentDifference([-2, -2, -2, -2, -2])).to eq(0)
    expect(arrayMaximalAdjacentDifference([-1, 1, -3, -4])).to eq(4)
  end
end
