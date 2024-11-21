def neutralize(sentence)
  answer = []
  words = sentence.split(' ')
  words.each do |word|
    if !negative?(word)
      answer << word
    end
  end

  answer.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
