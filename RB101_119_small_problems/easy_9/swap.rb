def swap_name(string)
  # arr = []
  # string_arr = string.split
  # arr << string_arr.last
  # arr << string_arr.first
  # arr.join(', ')

  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts')# == 'Roberts, Joe'
p swap_name('Blake Cutherell')

p swap_name('Joe Roberts') == 'Roberts, Joe'
p swap_name('Blake Cutherell') == 'Cutherell, Blake'

