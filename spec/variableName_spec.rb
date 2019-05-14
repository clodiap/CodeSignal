require_relative '../lib/variableName'

describe "variableName" do
  it "returns true if it's a correct variable name" do
    expect(variableName("var_1__Int")).to eq(true)
    expect(variableName("variable0")).to eq(true)
    expect(variableName("a")).to eq(true)
    expect(variableName("_Aas_23")).to eq(true)
  end
  it "returns false if it's not a correct variable name" do
    expect(variableName("qq-q")).to eq(false)
    expect(variableName("2w2")).to eq(false)
    expect(variableName(" variable")).to eq(false)
    expect(variableName("va[riable0")).to eq(false)
    expect(variableName("a a_2")).to eq(false)
    expect(variableName("0ss")).to eq(false)

  end
end
