def delete_digit(integer)

end

p delete_digit(791983)
p delete_digit(152)
p delete_digit(1001)
p delete_digit(10)

p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

delete_digit(791983) == 91983
delete_digit(152) == 52
delete_digit(1001) == 101
delete_digit(10) == 1

Problem:

input: Integer
output: Integer, with 1 fewer digit, representing the maximal number you can obtain by deleting one delete_digit

Requirements:
-the order has to be preserved of the remaining digits
-maximal number is integer with greatest value
-we don't need to cover negative integers?
-we don't need to cover input of 1 digit integers

Examples:

Data Structures:
-Integer --> Integer

delete_digit(791983) == 91983

Algorithm:
-calculate all of the integers that can be created from the input integer by deleting 1 digit
-return the greatest integer in that set

-initialize possible numbers array
-transform the integer into an array of digits (preserving digit order)
-iterate over that array of digits, for each digit
  -calculate an array that includes all other digits except that digit
    -the array where that digit is deleted
  -transform that result array into an integer
  -add that integer to a new array of possible numbers
-sort that array by increasing value
-return the last integer in the sorted array

=end

def delete_digit(integer)

  possible_maximal_numbers = []
  digits_array = integer.digits.reverse

  digits_array.each_with_index do |digit, index|
    working_digits_array = digits_array.map { |int| int }
    working_digits_array.delete_at(index)

    p working_digits_array
  end




end

delete_digit(791983) == 91983
# delete_digit(152) == 52
# delete_digit(1001) == 101
# delete_digit(10) == 1
