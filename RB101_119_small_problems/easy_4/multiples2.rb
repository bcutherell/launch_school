def multisum(integer)
  sum = 0
  array = 1..integer

  array.each do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  
  sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168