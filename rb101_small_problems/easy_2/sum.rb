puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute = gets.chomp

sum = (1..integer).sum
product = (1..integer).each do |i, h|
  i * h
end

if compute == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
end

if compute == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product}"
end