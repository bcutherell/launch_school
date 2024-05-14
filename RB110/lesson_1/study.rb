numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
even_numbers, odd_numbers = numbers.partition do |number|
                              number.even?
                            end

p odd_numbers
p even_numbers