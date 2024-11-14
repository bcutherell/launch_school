def twice(int)
  arr = int.digits.reverse
  first_half = arr[0]..arr[(arr.length / 2) - 1]
  second_half = arr[arr.length/2]..arr[-1]
  if arr.length.even? && (first_half) == (second_half)
    int
  else
    int * 2
  end
end

p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123456789123456789) == 123456789123456789
p twice(5) == 10