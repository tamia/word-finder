require 'maxitest/autorun'
load 'find_anagrams'

describe "#find_anagrams" do
  it "finds lots of words" do
    words = find_anagrams("fear".chars)
    words.must_equal ['fare']
  end
end
