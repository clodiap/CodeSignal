require_relative '../lib/commonCharacterCount'

describe "commonCharacterCount" do
  it "Given two strings, it finds the number of common characters between them" do
    expect(commonCharacterCount("aabcc","adcaa")).to eq(3)
    expect(commonCharacterCount("zzzz","zzzzzzz")).to eq(4)
    expect(commonCharacterCount("abca","xyzbac")).to eq(3)
    expect(commonCharacterCount("a","b")).to eq(0)
    expect(commonCharacterCount("a","aaa")).to eq(1)
  end
end
