require_relative '../lib/evenDigitsOnly'

describe "evenDigitsOnly" do
  it "returns true if all the digits are even" do
    expect(evenDigitsOnly(248622)).to eq(true)
    expect(evenDigitsOnly(248842)).to eq(true)
    expect(evenDigitsOnly(8)).to eq(true)
  end
  it "returns false if not all the digits are even" do
    expect(evenDigitsOnly(642386)).to eq(false)
    expect(evenDigitsOnly(1)).to eq(false)
    expect(evenDigitsOnly(2462487)).to eq(false)

  end
end
