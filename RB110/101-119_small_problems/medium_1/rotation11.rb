def rotate_array(array)
  rotated = []
  array[1..-1].each { |element| rotated << element }
  rotated << array[0]
end

def rotate_string(string)
  array = string.chars
  rotate_array(array).join
end

def rotate_integer(integer)
  array = integer.digits.reverse
  rotate_array(array).join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p rotate_string("hello")
p rotate_string("a")
p rotate_string("hello there, friend")

p rotate_integer(12345)
p rotate_integer(4)
p rotate_integer(5666)