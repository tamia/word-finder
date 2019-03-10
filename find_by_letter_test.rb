require 'maxitest/autorun'
load 'find_by_letters'

describe "#find_by_letters" do
  it "finds lots of words in february" do
    words = find_by_letter(4, "february")
    words.size.must_be :>, 15
    words.each do |word|
      word.chars.each { |character| "february".must_include character }
    end
    words.uniq.size.must_equal words.size
    words.must_include "fear"
    words.each { |word| word.size.must_equal 4 }
  end
end
