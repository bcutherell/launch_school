def show_multiplicative_average(array)
  holder = 1.0

  array.each do |number|
    holder *= number
  end

  new_holder = (holder / array.length)

  format('%.3f', new_holder)
end


p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667