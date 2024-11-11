def rotate_array(array)
  new_array = array[1..-1] << array[0]
end

def rotate_string(string)
  if string.empty?
    string
  else
    rotate_array(string.chars).join
  end
end

def rotate_integer(integer)
  rotate_array(integer.digits.reverse).join.to_i
end


# p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
# p rotate_array(['a']) #== ['a']

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]
# p x == [1, 2, 3, 4]

# p rotate_string('abc')
# p rotate_string('blake')
# p rotate_string('abbbbbbbbb')
# p rotate_string('')
# p rotate_string('a')

p rotate_integer(123)
p rotate_integer(1222)
p rotate_integer(0)
p rotate_integer(1)