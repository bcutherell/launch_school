def negative(number)
  if number > 0
    puts number * -1
  else
    puts number
  end
end

# All test cases should return true
puts negative(5)
puts negative(-3)
puts negative(0)   # There's no such thing as -0 in ruby
puts negative(69)
puts negative(-69)