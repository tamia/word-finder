# type in the letters in your hand, it will show all words that can be made with them



words = File.read("words.txt").split("\n") - ("b".."z").to_a + ["i"]
input_letters = ARGV[0].split("")
found = words.select do |word|
  copy = input_letters.dup
  word_letters = word.split("")
  word_letters.all? do |letter|
    copy.delete letter
  end
end

found.sort_by! do |word|
  word.length
end

puts found
