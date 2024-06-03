statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z') + ('a'..'z')

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result