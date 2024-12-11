LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a

def lowercase?(letter)
  letter == letter.downcase
end

def letter_percentages(string)
  lowercase_total = 0.0
  uppercase_total = 0.0
  neither_total = 0.0
  character_total = string.length

  array = string.chars

  array.each do |character|
    if LETTERS.include?(character)
      if lowercase?(character)
        lowercase_total += 1
      else
        uppercase_total += 1
      end
    else
      neither_total += 1
    end
  end

  lowercase_percentage = (lowercase_total / character_total) * 100
  uppercase_percentage = (uppercase_total / character_total) * 100
  neither_percentage = (neither_total / character_total) * 100

  answer = { lowercase: lowercase_percentage, uppercase: uppercase_percentage, neither: neither_percentage}
end

p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
