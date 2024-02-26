def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,6,8,9])

# def example(str)
#   i = 3  
#   loop do    
#     puts str    
#     i -= 1    
#     break if i == 0  
#   end
# end

# example('hello')