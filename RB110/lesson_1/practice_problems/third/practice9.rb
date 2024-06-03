words = "the flintstones rock"

def titleize(strng)
  strng.split.map { |word| word.capitalize }.join(' ')
end


# words.split.map { |word| word.capitalize }.join(' ')

p titleize(words)