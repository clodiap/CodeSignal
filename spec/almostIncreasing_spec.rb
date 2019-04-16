require_relative '../lib/almostIncreasing'

describe "almostIncreasingSequence" do
  it "determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array" do
    expect(almostIncreasingSequence([1, 3, 2])).to be(true)
    expect(almostIncreasingSequence([1, 2, 3, 4, 3, 6])).to be(true)
    expect(almostIncreasingSequence([3, 5, 67, 98, 3])).to be(true)
    expect(almostIncreasingSequence([1, 1, 2, 3, 4, 4])).to be(false)
    expect(almostIncreasingSequence([1, 3, 2, 1])).to be(false)
    expect(almostIncreasingSequence([40, 50, 60, 10, 20, 30])).to be(false)
    expect(almostIncreasingSequence([1, 2, 1, 2])).to be(false)
    expect(almostIncreasingSequence([1, 2, 3, 4, 5, 3, 5, 6])).to be(false)
    expect(almostIncreasingSequence([10, 1, 2, 3, 4, 5])).to be(true)
    expect(almostIncreasingSequence([1, 2, 3, 4, 99, 5, 6])).to be(true)
  end
end
