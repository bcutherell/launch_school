UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a"..'z').to_a

def letter_case_count(string)
  counts = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |element|
    if UPPERCASE.include?(element)
      counts[:uppercase] +=1
    elsif LOWERCASE.include?(element)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end
  
  counts
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
