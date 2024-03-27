def sum_method(number)
  total = 0
  1.upto(number) { |value| total += value}
  total
end

def product_method(number)
  total = 1
  1.upto(number) { |value| total *= value}
  total
end

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
s_or_p = gets.chomp


if s_or_p == 's'
  sum = sum_method(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif s_or_p == 'p'
  product = product_method(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}"
else
  puts "Error, start over please."
end





# def my_method(arg)
#   p arg.object_id
#   arg = "dog"
#   puts arg
# end

# animal = "dog"
# p animal.object_id
# my_method(animal)
# p animal.object_id



# require 'date'

# puts Date.civil
# puts Date.civil(2016)
# puts Date.civil(2016, 5)
# puts Date.civil(2016, 5, 13)





# x = [1, 2, 3]

# x.each do |x|
#   x << 4
#   break
# end

# p x

# x = [1, 2, 3]

# x.each do |x|
#   puts x
# end










# def remove_evens!(arr)
#   arr.each do |num|
#     if num % 2 == 0
#       arr.delete(num)
#     end
#   end
#   arr
# end

# p remove_evens!([1,1,2,3,4,6,8,9])

# def example(str)
#   i = 3  
#   loop do    
#     puts str    
#     i -= 1    
#     break if i == 0  
#   end
# end

# example('hello')