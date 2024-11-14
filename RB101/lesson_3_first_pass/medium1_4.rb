def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

array1 = [1, 2, 3, 4, 5]
array2 = [1, 2, 3, 4, 5]
p "#{array1} before the method"
p "#{array2} before the method"


p rolling_buffer1(array1, 10, 6)
p "array1 after rolling_buffer1: #{array1}"

p rolling_buffer2(array2, 10, 6)
p "array2 after rolling_buffer2 #{array2}"