require_relative '../lib/alternatingSums'

describe "alternatingSums" do
  it "returns an array of 2 sums" do
    expect(alternatingSums([50, 60, 60, 45, 70])).to eq([180, 105])
    expect(alternatingSums([100, 50])).to eq([100, 50])
    expect(alternatingSums([80])).to eq([80,0])
    expect(alternatingSums([100, 50, 50, 100])).to eq([150, 150])
    expect(alternatingSums([100, 51, 50, 100])).to eq([150, 151])
  end
end
