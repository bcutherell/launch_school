# require 'pry-byebug'

# def count_letters(string, char)
#   string.downcase.count(char.downcase)
# end

# def single_letters(string)
#   binding.pry
#   singles = []
#   string.chars.each do |char|
#     letter_count = count_letters(string, char)

#     if letter_count == 1
#       singles << char.downcase
#     end
#   end

#   singles
# end

# p single_letters('abc') == ['a', 'b', 'c']
# p single_letters('Hello World') == ['h', 'e', ' ', 'w', 'r', 'd']
# p single_letters('Cool cat') == ['l', ' ', 'a', 't']


def multiply(arr, multiplier)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == arr.size

    current_number = arr[counter]
    doubled_numbers << current_number * multiplier

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)