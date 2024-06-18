def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do 
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    put '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do 
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0 
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"


# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# loop do

#   integer_one = nil
#   loop do
#     puts 'Please enter a positive or negative integer:'
#     integer_one = gets.chomp

#     if integer_one == 0
#       puts "Invalid input. Only non-zero integers are allowed."
#     end
#   end

#   loop do 
#     puts "Please enter a positive or negative integer:"
#     integer_two = gets.chomp

#     if integer_two == 0
#       puts "Invalid input. Only non-zero integers are allowed."
#     end
#   end
#   break if valid_number?(integer_one) || valid_number?(integer_two)
# end

# answer = integer_one.to_i + integer_two.to_i
# puts "#{integer_one} + #{integer_two} = #{answer}"