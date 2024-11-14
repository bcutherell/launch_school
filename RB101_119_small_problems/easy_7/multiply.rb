# def multiply_list(arr1, arr2)
#   answer = []
#   counter = 0

#   loop do
#     answer << arr1[counter] * arr2[counter]
#     counter += 1
#     break if counter == arr1.length
#   end

#   answer
# end

# def multiply_list(arr1, arr2)
#   arr1.zip(arr2) { |sub_arr| p sub_arr.reduce(:*) }
# end

def multiply_list(arr1, arr2)
arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]