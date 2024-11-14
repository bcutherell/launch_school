def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

def interleave(arr1, arr2)
  new_arr = []
  counter = 0

  loop do
    break if counter == arr1.length
    new_arr << arr1[counter]
    new_arr << arr2[counter]
    counter += 1
  end

  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
