def rotate_rightmost_digits(number, location)
  array = number.digits.reverse
  array[-location..-1] = rotate_array(array[-location..-1])
  array.join.to_i
end

def rotate_array(array)
  rotated = []
  array[1..-1].each { |element| rotated << element }
  rotated << array[0]
end

def max_rotation(integer)
  number_of_digits = integer.digits.length
  number_of_digits.downto(1) do |n|
    integer = rotate_rightmost_digits(integer, n)
  end
  integer
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35)# == 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845