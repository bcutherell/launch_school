def halvsies(array)
  middle = (array.size / 2.0).round
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) #== [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]] # true
p halvsies([5]) #== [[5], []] # true
p halvsies([]) #== [[], []] # true

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true