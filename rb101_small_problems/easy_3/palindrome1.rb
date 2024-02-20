# def palindrome?(string)
#   string == string.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# def palindrome_array?(array)
#   array == array.reverse
# end

# p palindrome_array?([1, 2, 2, 1])
# p palindrome_array?([1, 2, 3, 4])

def palindrome?(string_or_array)
  string_or_array.to_s == string_or_array.to_s.reverse
end

p palindrome?([1, 2, 2, 1])
p palindrome?([1, 2, 3, 4])
p palindrome?('madam')
p palindrome?('Madam')