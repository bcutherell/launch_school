NUMBERS = {
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '0' => 0
}

def string_to_integer(string)
  number = string.chars.map { |letter| NUMBERS[letter] }
  holder = 0
  number.each { |num| holder = 10 * holder + num }
  holder
end

p string_to_integer('4321')
p string_to_integer('570')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570