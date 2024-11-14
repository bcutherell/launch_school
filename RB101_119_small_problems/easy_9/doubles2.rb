def double?(number)
  array = number.digits.reverse
  first_half = (array.length - 1) / 2
  second_half = array.length / 2
  if array.length.even? && array[0..first_half] == array[second_half..-1]
    true
  else
    false
  end
end

def twice(number)
  if double?(number)
    number
  else
    number * 2
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
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10