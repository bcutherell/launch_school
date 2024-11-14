ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def swapcase(string)
  characters = string.chars
  characters.map do |letter|
    if ALPHABET.include?(letter) && letter == letter.downcase
      letter.upcase!
    elsif ALPHABET.include?(letter) && letter == letter.upcase
      letter.downcase!
    end
  end
  characters.join
end



p swapcase('PascalCase')
p swapcase('Tonight on XYZ-TV')

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
