puts "What is your name?"
your_name = gets.chomp

if your_name[-1] == '!'
  your_name = your_name.chop
  puts "HELLO #{your_name.upcase}. WHY ARE WE YELLING?"
else
  puts "Hello #{your_name.capitalize}."
end

# if your_name.end_with?('!')
#   puts "HELLO #{your_name.upcase}. WHY ARE WE YELLING?"
# else
#   puts "Hello #{your_name.capitalize}."
# end