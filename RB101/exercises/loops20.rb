def greeting
	puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
	puts greeting #don't need to have puts
	number_of_greetings -= 1
end