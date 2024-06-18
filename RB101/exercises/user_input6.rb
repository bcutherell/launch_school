PASSWORD = 'password'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'



# my solution

# loop do
#   puts '>> Please enter your password'
#   password = gets.chomp
#   break if password == "password"
#   puts 'Invalid password, please try again.'
# end
# puts 'Welcome!'