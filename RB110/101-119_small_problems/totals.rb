def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13])





#   new_arr = []
#   counter = 0

#   loop do
#     new_arr << arr[counter]
#     counter += 1
#     break if counter == arr.length
#   end
#     new_arr
# end
