require_relative '../lib/makeArrayConsecutive2'

describe "makeArrayConsecutive" do
  it "finds out the minimum number of additional statues needed" do
    expect(makeArrayConsecutive([6, 2, 3, 8])).to eq(3)
  end
end
