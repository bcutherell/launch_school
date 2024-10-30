UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  array = string.chars.map do |letter|
    if UPPERCASE.include?(letter)
      letter.downcase
    elsif LOWERCASE.include?(letter)
      letter.upcase
    else
      letter
    end
  end
    array.join
end

p swapcase('PascalCase') #== 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'