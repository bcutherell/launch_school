def fizzbuzz(num1, num2)

  (num1..num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      p 'FizzBuzz'
    elsif num % 3 == 0
      p 'Fizz'
    elsif num % 5 == 0
      p 'Buzz'
    else
      p num
    end
  end

end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz