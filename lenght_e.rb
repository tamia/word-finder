#!/usr/bin/env ruby
#
# finds what words have long or short vowels

VOWEL = /[aeiou]/
CONSONANT = /[^aeiou]/

def find_short_long(vowel, kind)
  words = File.read("words.txt").split("\n")
  case kind
  when "short"
    vc = /^#{vowel}#{CONSONANT}+$/
    cvc = /^#{CONSONANT}+#{vowel}#{CONSONANT}+$/
    pattern = Regexp.union(vc, cvc)
  when "long"
    pattern = /^#{CONSONANT}*#{vowel}#{CONSONANT}*#{VOWEL}#{CONSONANT}*$/
  else
    abort "Use short or long"
  end
  words.grep(pattern)
end

puts find_short_long(ARGV.fetch(0), ARGV.fetch(1)) unless $0.include?("_test.rb")
