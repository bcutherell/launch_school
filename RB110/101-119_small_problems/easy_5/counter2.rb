ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a
NONALPHABET = %w(',' '.' '!' "'" '?')

def word_sizes(string)
  # hash = {}
  # string.split.each do |word|
  #   clean_word = word.delete('^A-Z', '^a-z')
  #   if hash.has_key?(clean_word.length)
  #     hash[clean_word.length] += 1
  #   else
  #     hash[clean_word.length] = 1
  #   end
  # end
  # hash

  hsh = Hash.new(0)
  just_letters = string.split.map { |word| word.delete '^A-Za-z' }
  just_letters.each { |word| hsh[word.length] += 1 }
  hsh
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}