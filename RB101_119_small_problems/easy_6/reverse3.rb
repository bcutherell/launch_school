def reverse!(array)
  left = 0
  right = -1

  while left < array.size / 2
    array[left], array[right] = array[right], array[left]
    left += 1
    right -= 1
  end
  array
end


list = [1, 2, 3, 4]
result = reverse!(list)
p result #== [4, 3, 2, 1] # true
p list #== [4, 3, 2, 1] # true
p list.object_id #== result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true