statement = "The Flintstones Rock"
letter_hash = {}
all_letters = ('A'..'Z').to_a + ('a'..'z').to_a

all_letters.each do |letter|
  letter_amount = statement.count(letter)
  if letter_amount > 0
    letter_hash[letter] = letter_amount
  end
end

p letter_hash