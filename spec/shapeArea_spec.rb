require_relative '../lib/shapeArea'

describe "shapeArea" do
  it "find the area of a polygon for a given n" do
    expect(shapeArea(2)).to eq(5)
    expect(shapeArea(3)).to eq(13)
    expect(shapeArea(4)).to eq(25)
  end
end
