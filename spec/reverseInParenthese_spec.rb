require_relative '../lib/reverseInParenthese'

describe "reverseInParentheses" do
  it "reverses characters in (possibly nested) parentheses in the input string" do
    expect(reverseInParentheses("(bar)")).to eq("rab")
    expect(reverseInParentheses("foo(bar)baz")).to eq("foorabbaz")
    expect(reverseInParentheses("foo(bar)baz(blim)")).to eq("foorabbazmilb")
    expect(reverseInParentheses("foo(bar(baz))blim")).to eq("foobazrabblim")
    expect(reverseInParentheses("(abc)d(efg)")).to eq("cbadgfe")

  end
end
