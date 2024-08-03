def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(arr, n)
  array = arr.digits.reverse
  
  left_side = array[0...-n]
  right_side = array[-n..-1]
  rotated_right = rotate_array(right_side)
  full = left_side + rotated_right

  full.join.to_i
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917