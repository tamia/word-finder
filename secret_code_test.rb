require 'maxitest/autorun'
load 'secret_code'

describe "#secret_code" do
  describe "1-letter" do
    it "encodes" do
      secret_code("1-letter", "encode", "abc").must_equal "bcd"
    end

    it "decodes" do
      secret_code("1-letter", "decode", "bcd").must_equal "abc"
    end

    it "decodes" do
      secret_code("1-letter", "decode", "abc").must_equal "zab"
    end
  end

  describe "symbols" do
    it "encodes" do
      secret_code("symbol", "encode", "abc").must_equal "=>?"
    end

    it "decodes" do
      secret_code("symbol", "decode", "=>?").must_equal "abc"
    end
  end
end
