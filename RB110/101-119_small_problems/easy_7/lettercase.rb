UPPERCASE_LETTERS = ('A'..'Z')
LOWERCASE_LETTERS = ('a'..'z')

def letter_case_count(string)
  hsh = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |object|
    if LOWERCASE_LETTERS.include?(object)
      hsh[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(object)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end

  hsh
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }