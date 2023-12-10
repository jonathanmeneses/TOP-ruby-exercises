#spec/calculator_spec.rb

require './lib/caesar_cipher'

describe CaesarCipher do

  describe "#translate" do

    it "returns a string" do
      cipher = CaesarCipher.new
        expect(cipher.translate("test",2)).to be_an_instance_of(String)
    end

    it "returns the same string" do
      cipher = CaesarCipher.new
        expect(cipher.translate("test",0)).to eql("test")
    end

    it "shifts a string forwards" do
      cipher = CaesarCipher.new
        expect(cipher.translate("tuv",1)).to eql("uvw")
    end

    it "shifts a string backwards" do
      cipher = CaesarCipher.new
        expect(cipher.translate("uvw",-1)).to eql("tuv")
    end

    it "shifts a string through the alphabet" do
      cipher = CaesarCipher.new
        expect(cipher.translate("xyz",2)).to eql("zab")
    end

    it "accounts for cases" do
      cipher = CaesarCipher.new
        expect(cipher.translate("TeSt",1)).to eql("UfTu")
    end

    it "accounts for punctuation" do
      cipher = CaesarCipher.new
        expect(cipher.translate("t3!t",1)).to eql("u3!u")
    end

  end
end
