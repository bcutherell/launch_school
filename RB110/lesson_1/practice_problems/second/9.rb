words = "the flintstones rock"

def titleize(string)
  words_array = string.split
  words_array.map! { |word| word.capitalize }
  words_array.join(' ')
end

p words
p titleize(words)


# string.split.map { |word| word.capitalize }.join(' ')