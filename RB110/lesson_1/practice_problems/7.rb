statement = "The Flintstones Rock"

char_count = {}
all_letters = ('A'..'Z').to_a + ('a'..'z').to_a

all_letters.each do |letter|
  letter_frequency = statement.count(letter)
  if letter_frequency > 0
    char_count[letter] = letter_frequency
  end
end

p char_count