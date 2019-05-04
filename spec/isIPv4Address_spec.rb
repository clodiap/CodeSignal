require_relative '../lib/isIPv4Address'

describe "isIPv4Address" do
  it "should have 4 numbers" do
    expect(isIPv4Address(".254.255.0")).to be(false)
    expect(isIPv4Address("122.254.255.0")).to be(true)
    expect(isIPv4Address("1")).to be(false)
    expect(isIPv4Address("1.23.256.255.")).to be(false)
    expect(isIPv4Address("1.23.256..")).to be(false)
    expect(isIPv4Address("0..1.0")).to be(false)
    expect(isIPv4Address("0..1.0.0")).to be(false)
    expect(isIPv4Address("35..36.9.9.0")).to be(false)
    expect(isIPv4Address("1.1.1.1.1")).to be(false)
  end

  it "numbers should be between 0 and 255" do
    expect(isIPv4Address("172.16.254.1")).to be(true)
    expect(isIPv4Address("0.254.255.0")).to be(true)
    expect(isIPv4Address("172.316.254.1")).to be(false)
    expect(isIPv4Address("1.256.1.1")).to be(false)
  end

  it "should contains only numbers" do
    expect(isIPv4Address("1.1.1.1a")).to be(false)
    expect(isIPv4Address("a0.1.1.1")).to be(false)
  end
end
