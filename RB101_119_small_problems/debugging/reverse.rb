def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = -1
  while i >= -words.length
    reversed_words << words[i]
    i -= 1
  end

  # i = -1
  # loop do
  #   reversed_words << words[i]
  #   i -= 1
  #   break if i < -words.length
  # end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')