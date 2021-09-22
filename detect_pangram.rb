#!/usr/bin/env ruby

def pangram?(string)
  # convert string to lowercase alphabet char array
  alphabet = string.downcase.split('')
               .uniq.sort.select { |char| char[/^[a-z]+$/] }
  alphabet.length.equal? 26
end
p pangram?("The quick brown fox jumped over the lazy dog! asdf8$*@Q#4913")
p pangram?("no")