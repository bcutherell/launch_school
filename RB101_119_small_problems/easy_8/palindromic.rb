def leading_substrings(string)
  arr = []
  letters = ''

  string.chars.each do |let|
    letters += let
    arr << letters
  end

  arr
end

def substrings(string)
  results = []

  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end

  results
end

def palindrome?(string)
  string == string.reverse && string.length > 1
end

def palindromes(string)
  all_subs = substrings(string)
  pallys = []

  all_subs.each do |substring|
    pallys << substring if palindrome?(substring)
  end

  pallys
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]