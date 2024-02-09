say_hello = true
count = 1

while say_hello
  puts 'Hello!'
  count += 1
  if count > 5
    say_hello = false
  end
end

# while say_hello
#   5.times {puts 'Hello!'}
#   say_hello = false
# end