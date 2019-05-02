require_relative '../lib/palindromeRearranging'

describe "palindromeRearranging" do
  it "Find the minimal number of moves required to obtain a strictly increasing sequence from the input" do
    expect(palindromeRearranging("aabb")).to eq(true)
    expect(palindromeRearranging("abbcabb")).to eq(true)
    expect(palindromeRearranging("zyyzzzzz")).to eq(true)
    expect(palindromeRearranging("z")).to eq(true)
    expect(palindromeRearranging("zaa")).to eq(true)
    expect(palindromeRearranging("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc")).to eq(false)
    expect(palindromeRearranging("abca")).to eq(false)
    expect(palindromeRearranging("abcad")).to eq(false)
    expect(palindromeRearranging("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbccccaaaaaaaaaaaaa")).to eq(false)
    expect(palindromeRearranging("abdhuierf")).to eq(false)

    expect(palindromeRearranging("rrjjrhrrrjnhnnsvrjvrnvvrsjrjv")).to eq(true)
    expect(palindromeRearranging("lllcsyscogosycslssclgsyssyylsdgsldgoooscllylc")).to eq(true)
    expect(palindromeRearranging("ppckykphcykycylkkypqklcyplllkpqpyyphpkl")).to eq(true)
    expect(palindromeRearranging("mtjtjzjtmmztm")).to eq(true)
  end
end
