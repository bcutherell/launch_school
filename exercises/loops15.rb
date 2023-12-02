numbers = []

loop do 
	puts 'Enter any number:'
	input = gets.chomp.to_i
	numbers << input
	break if numbers.size == 5
end
puts numbers


# my solution
# numbers = []
# count = 1

# loop do 
# 	puts 'Enter any number:'
# 	input = gets.chomp.to_i
# 	numbers << input
# 	break if count == 5
# 	count += 1
# end
# puts numbers