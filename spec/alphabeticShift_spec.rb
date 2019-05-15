require_relative '../lib/alphabeticShift'

describe "alphabeticShift" do
  it "returns a string with all the letters changed by the next letter in the alphabet" do
    expect(alphabeticShift("crazy")).to eq("dsbaz")
    expect(alphabeticShift("z")).to eq("a")
    expect(alphabeticShift("aaaabbbccd")).to eq("bbbbcccdde")
    expect(alphabeticShift("fuzzy")).to eq("gvaaz")
    expect(alphabeticShift("codesignal")).to eq("dpeftjhobm")
  end
end
