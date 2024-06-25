def halvsies(arr)
  arr1 = []
  arr2 = []
  counter = 0

  while counter < arr.size
    if arr.length.odd?
      counter <= arr.length/2 ? arr1 << arr[counter] : arr2 << arr[counter]
    elsif arr.length.even?
      counter < arr.length/2 ? arr1 << arr[counter] : arr2 << arr[counter]
    end
    counter += 1
 end 

 return arr1, arr2
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]