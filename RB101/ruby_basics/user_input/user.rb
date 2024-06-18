PASSWORD = 'password'
USER_NAME = 'admin'

loop do
  puts "Please enter user name:"
  answer1 = gets.chomp
  puts ">> Please enter your password:"
  answer2 = gets.chomp
  break if answer1 == USER_NAME && answer2 == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"