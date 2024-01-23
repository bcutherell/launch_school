puts "Enter the length of the room in feet:"
length = gets.chomp.to_i

puts "Enter the width of the room in feet:"
width = gets.chomp.to_i

area = length * width
inch_conversion = area * 144
centimeter_conversion = inch_conversion * 6.4516

puts "The area of the room is #{area} feet (#{inch_conversion} square inches or #{centimeter_conversion} square centimeters)."


#square foot to inch 144
#square inch to centimeter 6.4516

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i

# area = length * width
# converted = area * 10.7639

# puts "The area of the room is #{area} meters (#{converted} square feet)."