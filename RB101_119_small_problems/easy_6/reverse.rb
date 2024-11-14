def reverse!(arr)
  first = 0
  last = arr.length - 1

  while first < last
    arr[first], arr[last] = arr[last], arr[first]
    first += 1
    last -= 1
  end

  arr
end



list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list)
p list 

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true