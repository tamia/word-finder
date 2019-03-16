require 'maxitest/autorun'
load 'find_anagrams'

def capture_stdout
  old = $stdout
  $stdout = StringIO.new
  yield
  $stdout.string
ensure
  $stdout = old
end

describe "#find_anagrams" do
  it "finds lots of words" do
    capture_stdout do
      words = find_anagrams("fear".chars)
      words.must_equal ['fare']
    end
  end
end
