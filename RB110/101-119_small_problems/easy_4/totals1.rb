# def running_total(arr)
#   sum = 0
#   arr.map { |num| sum += num }
# end


p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

# def running_total(arr)
#   new_arr = []
#   counter = 0

#   loop do
#     break if counter == arr.length
#     new_arr << (arr[counter] + arr[counter - 1])
#     counter += 1
#   end

#   new_arr
# end



