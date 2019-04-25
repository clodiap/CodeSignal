require_relative '../lib/addBorder'

describe "addBorder" do
  it "adds a border of asterisks" do
    expect(addBorder(["abc", "ded"])).to eq(["*****", "*abc*", "*ded*", "*****"])
    expect(addBorder(["a"])).to eq(["***", "*a*", "***"])
    expect(addBorder(["aa",  "**",  "zz"])).to eq(["****", "*aa*", "****", "*zz*", "****"])
    expect(addBorder(["abcde", "fghij", "klmno", "pqrst", "uvwxy"])).to eq(["*******", "*abcde*", "*fghij*", "*klmno*", "*pqrst*", "*uvwxy*", "*******"])
    expect(addBorder(["wzy**"])).to eq(["*******", "*wzy***", "*******"])
  end
end
