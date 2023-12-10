#spec/calculator_spec.rb

require './lib/caesar_cypher'

describe "#caesar_cipher" do
  it "returns a string" do
    expect(caesar_cipher()).to eql(7)
  end
end
