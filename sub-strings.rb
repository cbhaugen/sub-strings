require 'pry'

dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit']


def substrings(words, dictionary)
  findings = Hash.new(0)
  words = words.downcase.split(/\W+/)

  words.each do |word|
    findings[word] += 1 if dictionary.include?(word)
  end

  return findings
end

substrings("Howdy partner, sit down, partner down!", dictionary)

binding.pry
