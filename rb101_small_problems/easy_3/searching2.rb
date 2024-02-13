array = []

loop do
  puts "please give me a number"
  answer = gets.chomp.to_i
  array << answer
  break if array.size == 5
end

p array