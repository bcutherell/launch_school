def sum_of_sums(arr)
  total = 0
  add = 0

  arr.each do |num|
    add += num
    total += add
  end

  total
end

p sum_of_sums([3, 5, 2])# == 21
p sum_of_sums([1, 5, 7, 3])# == 36
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35
