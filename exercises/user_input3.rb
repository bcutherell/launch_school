puts ">> Do you want me to print something? (y/n)"
input = gets.chomp.downcase
puts 'something' if input == 'y'




# why doesn't this work?
# if input == y
# 	puts "something"
# end