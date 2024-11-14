def multisum(num)
  sum = 0
  counter = 0

  loop do
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
    counter += 1
    num -= 1
    break if num == 1
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168