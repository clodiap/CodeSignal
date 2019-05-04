require_relative '../lib/areEquallyStrong'

describe "areEquallyStrong" do
  it "finds out if the two are equally strong" do
    expect(areEquallyStrong(10,15,15,10)).to eq(true)
    expect(areEquallyStrong(15,10,15,10)).to eq(true)
    expect(areEquallyStrong(10,5,5,10)).to eq(true)
    expect(areEquallyStrong(10,20,10,20)).to eq(true)
    expect(areEquallyStrong(5,20,20,5)).to eq(true)
    expect(areEquallyStrong(5,10,5,10)).to eq(true)
    expect(areEquallyStrong(1,1,1,1)).to eq(true)
    expect(areEquallyStrong(0,10,10,0)).to eq(true)
    expect(areEquallyStrong(1,10,10,0)).to eq(false)
    expect(areEquallyStrong(20,15,5,20)).to eq(false)
    expect(areEquallyStrong(10,15,5,20)).to eq(false)
    expect(areEquallyStrong(15,10,15,9)).to eq(false)
    expect(areEquallyStrong(5,5,10,10)).to eq(false)
    expect(areEquallyStrong(10,5,10,6)).to eq(false)
  end
end
