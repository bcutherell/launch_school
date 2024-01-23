even = 1..99
just_even = even.select {|number| number.even? }
puts just_even

# for number in 1..99
#   if number.even?
#     puts number
#   end
# end

# number = 1
# while number <= 99
#   puts number if value.even?
#   number += 1
# end