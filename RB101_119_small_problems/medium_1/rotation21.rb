def rotate_rightmost_digits(number, location)
  array = number.digits.reverse
  # remove = array[array.length-location]
  # array.delete(remove)
  # (array << remove).join.to_i

  array[-location..-1] = rotate_array(array[-location..-1])
  array.join.to_i
end

def rotate_array(array)
  rotated = []
  array[1..-1].each { |element| rotated << element }
  rotated << array[0]
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