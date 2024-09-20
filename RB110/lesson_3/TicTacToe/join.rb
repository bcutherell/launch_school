def joinor(array, delimiter=', ', joining_word='or')
  last = array.pop
  # array.join(delimiter) + "#{delimiter} " + joining_word + " " + last.to_s
  "#{array.join(delimiter)} #{joining_word} #{last.to_s}"
end


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