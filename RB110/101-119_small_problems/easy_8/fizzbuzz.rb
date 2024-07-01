# def fizzbuzz(int1, int2)
#   answer = []

#   int1.upto(int2) do |num|
#     if num % 3 == 0 && num % 5 == 0
#       answer << "FizzBuzz"
#     elsif num % 3 == 0
#       answer << "Fizz"
#     elsif num % 5 == 0
#       answer << "Buzz"
#     else
#       answer << num
#     end
#   end

#   answer.join(', ')
# end

# p fizzbuzz(1, 15)
arr = []

1.upto(10) do |num|
  arr << num
end

p arr