def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# def rotate_rightmost_digits(arr, n)
#   array = arr.digits.reverse
  
#   left_side = array[0...-n]
#   right_side = array[-n..-1]
#   rotated_right = rotate_array(right_side)
#   full = left_side + rotated_right

#   full.join.to_i
# end

def rotate_rightmost_digits(num, digits)
  digit_list = num.to_s.chars
  digit_list.push(digit_list.delete_at(-digits))
  digit_list.join.to_i
end

def max_rotation(int)
  arr = int.digits.reverse
  rotate_rightmost_digits(int, )
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15
p max_rotation(8_703_529_146) #== 7_321_609_845

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15
p max_rotation(8_703_529_146) == 7_321_609_845