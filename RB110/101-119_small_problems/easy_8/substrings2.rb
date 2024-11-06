def leading_substrings(string)
  # holder = []
  # string.chars.each_with_index { |letter, ind| holder << string[0..ind] }
  # holder
  string.chars.map.with_index { |letter, ind| string[0..ind] }
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']