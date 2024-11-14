puts "Please write a word or multiple words:"
answer = gets.chomp

length = answer.delete(' ').length
puts "There are #{length} characters in \"#{answer}\"."