def show_multiplicative_average(arr)
  total = arr.inject(:*)
  average = total.fdiv(arr.length)
  puts "The result is #{format('%.3f', average)}"
end

def show_multiplicative_average(arr)
  product = 1.to_f
  arr.each do |num|
    product *= num
  end
  average = product / arr.length
  p "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])