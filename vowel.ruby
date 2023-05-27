hash = {}
alphabet = ('a'..'z').to_a
vowels = ["a", "e", "i", "o", "u"]

alphabet.each do |vowel|
  if vowels.include?(vowel)
    hash[vowel] = alphabet.index(vowel) + 1
  end
end

puts hash
