boolean = [true, false].sample
puts boolean

boolean ? puts("I'm true!") : puts("I'm false!")

puts (boolean ? "I'm true!" : "I'm false!")

# if boolean == true
# 	puts "I'm true!"
# else
# 	puts "I'm false!"
# end