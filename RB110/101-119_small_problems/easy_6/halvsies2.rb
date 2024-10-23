def halvsies(array)
  new_array = []
  new_array << array
  new_array << array
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