require_relative '../lib/adjacentProduct'

describe "adjacentElementsProduct" do
  it "find the pair of adjacent elements that has the largest product and return that product" do
    expect(adjacentElementsProduct([3, 6, -2, -5, 7, 3])).to eq(21)
    expect(adjacentElementsProduct([-23, 4, -3, 8, -12])).to eq(-12)
  end
end


