# def oddities(arr)
#   holder_arr = []
#   arr.each_with_index do |element, index|
#     holder_arr << element if index.even?
#   end
#   holder_arr
# end

# def oddities(arr)
# holder_arr = []
# counter = 0

#   loop do
#     break if counter == arr.length
#     if counter.even?
#       holder_arr << arr[counter]
#     end
#     counter += 1
#   end

# holder_arr
# end

# def oddities(array)
#   odd_elements = []
#   index = 0
#   until index >= array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

# def evens(arr)
#   holder_arr = []
#   arr.each_with_index do |element, index|
#     holder_arr << element if index.odd?
#   end
#   holder_arr
# end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []
p oddities([1, 2, 3, 4, 1]) #== [1, 3, 1]

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# p evens([2, 3, 4, 5, 6]) #== [2, 4, 6]
# p evens([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
# p evens(['abc', 'def']) #== ['abc']
# p evens([123]) #== [123]
# p evens([]) #== []
# p evens([1, 2, 3, 4, 1]) #== [1, 3, 1]

# p evens([2, 3, 4, 5, 6]) == [3, 5]
# p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# p evens(['abc', 'def']) == ['def']
# p evens([123]) == []
# p evens([]) == []
# p evens([1, 2, 3, 4, 1]) == [2, 4]