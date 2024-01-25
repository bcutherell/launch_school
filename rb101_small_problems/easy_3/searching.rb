puts "==> Enter the 1st number:"
first = gets.chomp.to_i

puts "==> Enter the 2nd number:"
second = gets.chomp.to_i

puts "==> Enter the 3rd number:"
third = gets.chomp.to_i

puts "==> Enter the last number:"
last = gets.chomp.to_i

new_array = [first, second, third]

# if first = last
#   puts "The number #{last} appears in #{new_array}."
# elsif second = last
#   puts "The number #{last} appears in #{new_array}."
# elsif third = last
#   puts "The number #{last} appears in #{new_array}."
# else
#   puts "The number #{last} does not appear in #{new_array}."
# end