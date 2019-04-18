require_relative '../lib/allLongestString'

describe "allLongestStrings" do
  it "return another array containing all of its longest strings" do
    expect(allLongestStrings(["aba", "aa", "ad", "vcd", "aba"])).to eq(["aba", "vcd", "aba"])
    expect(allLongestStrings(["aa"])).to eq(["aa"])
    expect(allLongestStrings(["abc", "eeee", "abcd", "dcd"])).to eq(["eeee", "abcd"])
    expect(allLongestStrings(["a", "abc", "cbd", "zzzzzz", "a", "abcdef", "asasa", "aaaaaa"])).to eq(["zzzzzz", "abcdef", "aaaaaa"])
  end
end
