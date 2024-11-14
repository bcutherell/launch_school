def merge(arr1, arr2)
  new_arr = arr1
  arr2.each { |num| new_arr << num unless new_arr.include?(num) }
  new_arr
end

p merge([1, 3, 5], [3, 6, 9])
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
