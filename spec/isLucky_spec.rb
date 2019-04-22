require_relative '../lib/isLucky'

describe "isLucky" do
  it "A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half, determine if it's lucky or not" do
    expect(isLucky(1230)).to eq(true)
    expect(isLucky(239017)).to eq(false)
    expect(isLucky(134008)).to eq(true)
    expect(isLucky(10)).to eq(false)
    expect(isLucky(11)).to eq(true)
    expect(isLucky(1010)).to eq(true)
    expect(isLucky(261534)).to eq(false)
    expect(isLucky(100000)).to eq(false)
    expect(isLucky(999999)).to eq(true)
    expect(isLucky(123321)).to eq(true)
  end
end
