numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |x| 
						x % 3 == 0
					end



# divisible_by_three = numbers.select {|x| x % 3 == 0}

p divisible_by_three