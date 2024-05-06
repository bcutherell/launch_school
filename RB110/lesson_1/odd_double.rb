def double_odd_numbers!(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_index = numbers[counter]
    current_index *= 2 if counter.odd?
    doubled_numbers << current_index
    
    counter += 1

  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_odd_numbers!(my_numbers)  # => [2, 4, 6, 14, 2, 6]
p my_numbers                      # => [1, 4, 3, 7, 2, 6]