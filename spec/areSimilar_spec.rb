require_relative '../lib/areSimilar'

describe "areSimilar" do

  it "returns true if the 2 arrays are the same" do
    expect(areSimilar([1, 2, 3], [1, 2, 3])).to eq(true)
  end

  it "returns true if one can be obtained from another by swapping at most one pair of elements" do
    expect(areSimilar([1, 2, 3], [2, 1, 3])).to eq(true)
    expect(areSimilar([2, 3, 1], [1, 3, 2])).to eq(true)
    expect(areSimilar([832, 998, 148, 570, 533, 561, 894, 147, 455, 279], [832, 998, 148, 570, 533, 561, 455, 147, 894, 279])).to eq(true)
  end

  it "returns false if one cannot be obtained from another by swapping at most one pair of elements" do
    expect(areSimilar([1, 2, 2], [2, 1, 1])).to eq(false)
    expect(areSimilar([1, 1, 4], [1, 2, 3])).to eq(false)
    expect(areSimilar([1, 2, 3], [1, 10, 2])).to eq(false)
    expect(areSimilar([2, 3, 9], [10, 3, 2])).to eq(false)
    expect(areSimilar([4, 6, 3], [3, 4, 6])).to eq(false)
    expect(areSimilar([832, 998, 148, 570, 533, 561, 894, 147, 455, 279], [832, 570, 148, 998, 533, 561, 455, 147, 894, 279])).to eq(false)

  end
end
