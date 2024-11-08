def leading_substrings(string)
  string.chars.map.with_index { |letter, ind| string[0..ind] }
end

def substrings(string)
  array = string.chars
  new_arr = []

  loop do
  new_arr += leading_substrings(array.join)
  array.shift
  break if array.empty?
  end
  new_arr
end



p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]