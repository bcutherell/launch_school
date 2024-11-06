def sum_of_sums(array)
  # holder = 0
  # accumulator = 0

  # array.each do |num|
  #   accumulator += num
  #   holder += accumulator
  # end
  # holder

  holder = []

  array.each_with_index { |num, ind| holder << array[0..ind] }
  holder.flatten.sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])# == 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35