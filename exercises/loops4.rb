loop do  
	puts 'Should I stop looping?'
	answer = gets.chomp.downcase
	break if answer == 'yes'
	puts 'Incorrect answer, please answer "yes".'
end