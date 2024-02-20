def palindromic_number?(integer)
  palindrome?(integer.to_s)
end

def palindrome?(string)
  string == string.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true