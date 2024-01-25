# sum = (1..integer).sum

def sum(number)
  total = 0
  (1..number).each do |value|
    total += value
  end
  total
end

def product(number)
  total = 1
  (1..number).each do |value| 
    total *= value
end
  total
end

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute = gets.chomp

# solution = product(integer)

if compute == 's'
  sum = sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif compute == 'p'
  product = product(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}"
else
  puts "Please enter either s or p."
end