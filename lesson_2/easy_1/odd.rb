def is_odd?(number)
	number.remainder(2).abs == 1
end

# def is_odd?(number)
# 	number % 2 == 1
# end


# def is_odd?(number)
# 	if number % 2 == 0
# 		puts false
# 	else
# 		puts true
# 	end
# end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true