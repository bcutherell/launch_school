array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = []

array.each do |number|
  if number > 5
    puts number
  end
end

new_array = array.select{ |num| num % 2 == 1 }

p new_array


# new_array = []

# array.each do |number|
#   if number > 5 && number % 2 == 1
#     new_array << number
#   end
# end

# p new_array