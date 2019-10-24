#!/usr/bin/env ruby

VOWEL = 'aeoui'

def find_cvvc
  words = File.read("words.txt").split("\n")
  puts "#{words.size} words -- #{words.first(5)}"

  words = words.grep(/^[^#{VOWEL}]+[#{VOWEL}]{2}[^#{VOWEL}]+$/i)
  puts "#{words.size} words -- #{words.first(5)}"
  words
end

puts find_cvvc unless $0.include?("_test.rb")
