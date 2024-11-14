# def oddities(array)
#   new_array = []
#   array.each_with_index do |object, index|
#     if index.even?
#       new_array << object
#     end
#   end
#   new_array
# end

# def oddities(array)
#   new_array = []
#   count = 0

#   loop do
#     break if count == array.length
#     if count.even?
#       new_array << array[count]
#     end
#     count += 1
#   end

#   new_array
# end

def oddities(array)
  array.select.with_index { |object, index| index.even? }
end

# def evenities(array)
#   new_array = []
#   array.each_with_index do |object, index|
#     if index.odd?
#       new_array << object
#     end
#   end
#   new_array
# end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []
p oddities([1, 2, 3, 4, 1]) #== [1, 3, 1]

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# p evenities([2, 3, 4, 5, 6])
# p evenities([1, 2, 3, 4, 5, 6])
# p evenities(['abc', 'def'])
# p evenities([123])
# p evenities([])
# p evenities([1, 2, 3, 4, 1])