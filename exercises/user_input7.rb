USERNAME = 'bcutherell'
PASSWORD = 'password'

loop do
  puts '>> Please enter user name:'
  username_try = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if username_try == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'

# nailed it! added some spaces like in the example,
# to increase readability.