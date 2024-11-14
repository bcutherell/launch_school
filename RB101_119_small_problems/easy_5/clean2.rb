ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def cleanup(string)
  holder = []
  string.chars.each do |letter|
    if ALPHABET.include?(letter)
      holder << letter
    else
      holder << ' '
    end
  end
  holder.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") #== ' what s my line '
p cleanup("---what's my +*& line?") == ' what s my line '