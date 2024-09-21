def joinor(array, delimiter=', ', joining_word='or')
  if array.length == 1
    array[0].to_s
  elsif array.length == 2
    array.join(" #{joining_word} ")
  else
  "#{array[0...-1].join(delimiter)}#{delimiter}#{joining_word} #{array.last}"
  end
end

p joinor([1])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"


  # if array.length > 2
  #   array.join(delimiter)
  # else
  #   array.join(joining_word)
  # end

  # [array[0...-1].join(delimiter), array.last].join(' ' + joining_word + ' ')