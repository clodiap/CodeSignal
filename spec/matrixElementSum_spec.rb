require_relative '../lib/matrixElementSum'

describe "matrixElementSum" do
  it "returns the sum of the rooms that are not under a zero in the last array" do
    expect( matrixElementsSum( [ [0, 1, 1, 2], [0, 5, 0, 0], [2, 0, 3, 3] ] ) ).to eq(9)
    expect( matrixElementsSum( [ [1, 1, 1, 0], [0, 5, 0, 1], [2, 1, 3, 10] ] ) ).to eq(9)
    expect( matrixElementsSum( [[1,1,1], [2,2,2], [3,3,3]] ) ).to eq(18)
    expect( matrixElementsSum( [[0]] ) ).to eq(0)
    expect( matrixElementsSum( [[1,0,3], [0,2,1], [1,2,0]] ) ).to eq(5)
    expect( matrixElementsSum( [[1], [5], [0], [2]] ) ).to eq(6)
  end
end
