require_relative '../lib/avoidObstacles'

describe "avoidObstacles" do
  it "adds a border of asterisks" do
    expect(avoidObstacles([5, 3, 6, 7, 9])).to eq(4)
    expect(avoidObstacles([2, 3])).to eq(4)
    expect(avoidObstacles([1, 4, 10, 6, 2])).to eq(7)
    expect(avoidObstacles([1000, 999])).to eq(6)
    expect(avoidObstacles([19, 32, 11, 23])).to eq(3)
    expect(avoidObstacles([5, 8, 9, 13, 14])).to eq(6)
  end
end
