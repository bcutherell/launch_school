puts "Give me a number between 1 and 100, please."
answer = gets.chomp.to_i

# if answer >= 0 && answer <= 50
#   puts "this number is between 0 and 50"
# elsif answer >= 51 && answer <= 100
#   puts "This number is between 51 and 100"
# elsif answer > 100
#   puts "this number is over 100"
# end

case
when answer >= 0 && answer <= 50
  puts "This number is between 0 and 50"
when answer >= 51 && answer <= 100
  puts "This number is between 51 and 100"
when answer > 100
  puts "this number is over 100"
end
