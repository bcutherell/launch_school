def leading_substrings(string)
  arr = []
  letters = ''

  string.chars.each do |let|
    letters += let
    arr << letters
  end

  arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']