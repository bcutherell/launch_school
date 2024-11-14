CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z) +
             %w(B C D F G H J K L M N P Q R S T V W X Y Z)

def double_consonants(string)
  doubled = string.chars.map do |letter|
    if CONSONANTS.include?(letter)
      letter * 2
    else
      letter
    end
  end
  doubled.join
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""