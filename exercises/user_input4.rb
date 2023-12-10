choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'





# my original answer

# puts ">> Do you want me to print something? (y/n)"
# input = gets.chomp.downcase

# if input == 'y'
# 	puts "something"
# elsif input == 'n'
# 	puts "something"
# else
# 	puts "Invalid input! Please enter y or n"
# end