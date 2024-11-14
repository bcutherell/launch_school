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


def string_to_signed_integer(string)
  # case string[0]
  # when '-'
  #   -string_to_integer(string[1..-1])
  # when '+'
  #   string_to_integer(string[1..-1])
  # else
  #   string_to_integer(string)
  # end

  if string[0] == '-'
    -string_to_integer(string[1..-1])
  elsif string[0] == '+'
    string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

def string_to_integer(string)
  number = string.chars.map { |letter| NUMBERS[letter] }
  holder = 0
  number.each { |num| holder = 10 * holder + num }
  holder
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100