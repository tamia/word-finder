#!/usr/bin/env ruby
#
# hack your homework, search cvvc but you can pick your own vowels!

VOWEL = '[aeoui]'
CONSONANT = '[^aeoui]'

def find_cvvc(middle)
  all_words = File.read("words.txt").split("\n")
  puts "#{all_words.size} words total -- #{all_words.first(5)}"

  matched_words = all_words.grep(/#{CONSONANT}#{middle}#{CONSONANT}/)
  puts "#{matched_words.size} words matched -- #{matched_words.first(5)}"

  matched_words
end

puts find_cvvc(ARGV[0] || "#{VOWEL}#{VOWEL}") unless $0.include?("_test.rb")
