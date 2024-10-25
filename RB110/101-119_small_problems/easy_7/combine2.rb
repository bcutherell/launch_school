def interleave(array1, array2)
  # array1.zip(array2).flatten
  holder = []

  array1.each_with_index do |element, index|
    holder << element << array2[index]
  end
  holder
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']