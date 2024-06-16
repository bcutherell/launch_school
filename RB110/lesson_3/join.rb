def joinor(arr, punctuation = ', ', delim = 'or')
  if arr.length <= 1
    arr.join
  elsif arr.length == 2
    arr.join (" #{delim} ")
  else
    "#{arr[0..-2].join(punctuation)}, #{delim} #{arr[-1].to_s}"
  end
end

p joinor([1, 2])
p joinor([1, 2, 3])
p joinor([1, 2, 3], '; ')
p joinor([1, 2, 3], ', ', 'and')
p joinor([])
p joinor([1])
