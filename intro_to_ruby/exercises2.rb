array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# array.each do |number|
#   if number > 5
#     puts number
#   end
# end

array.each { |number| puts number if number > 5 }