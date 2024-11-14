list_of_numbers = []

puts "==> Enter the 1st number:"
number1 = gets.chomp.to_i
list_of_numbers << number1

puts "==> Enter the 2nd number:"
number2 = gets.chomp.to_i
list_of_numbers << number2

puts "==> Enter the 3rd number:"
number3 = gets.chomp.to_i
list_of_numbers << number3

puts "==> Enter the 4th number:"
number4 = gets.chomp.to_i
list_of_numbers << number4

puts "==> Enter the 5th number:"
number5 = gets.chomp.to_i
list_of_numbers << number5

puts "==> Enter the last number:"
number6 = gets.chomp.to_i

if list_of_numbers.include?(number6)
  puts "The number #{number6} appears in #{list_of_numbers}"
else
  puts "The number #{number6} does not appear in #{list_of_numbers}"
end
