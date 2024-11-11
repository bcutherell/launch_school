def rotate_array(array)
  new_array = array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, rotations)
  array = number.digits.reverse
  rotated = rotate_array(array[-rotations..-1])
  combined = array[0...-rotations] + rotated
  combined.join.to_i
end

def max_rotation(number)
  array = number.digits.reverse
  count = 0
  holder = []

  loop do 
    break if count == array.length
    holder << rotate_rightmost_digits(array[count..-1].join.to_i, count)
    count += 1
  end

  holder
end



p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845