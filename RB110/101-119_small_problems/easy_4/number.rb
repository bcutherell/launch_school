# DIGITS = {
#   0 => '0', 1 => '1', 2 => '2',
#   3 => '3', 4 => '4', 5 => '5',
#   6 => '6', 7 => '7', 8 => '8',
#   9 => '9'
# }

def integer_to_string(number)
  string = ''
  letters = number.each do |num|
      case num
      when 0 then string << '0'
      when 1 then string << '1'
      when 2 then string << '2'
      when 3 then string << '3'
      when 4 then string << '4'
      when 5 then string << '5'
      when 6 then string << '6'
      when 7 then string << '7'
      when 8 then string << '8'
      when 9 then string << '9'
      end
    end
    string
end


# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end




p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)