NUMBERS = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}

# def signed_integer_to_string(number)
#   if number < 0
#     "-#{integer_to_string(-number)}"
#   elsif number > 0
#     "+#{integer_to_string(number)}"
#   else
#     integer_to_string(number)
#   end
# end

def signed_integer_to_string(int)
  ['-','','+'][int <=> 0] + integer_to_string(int.abs)
end

def integer_to_string(number)
  number.digits.reverse.map { |num| NUMBERS[num] }.join
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'