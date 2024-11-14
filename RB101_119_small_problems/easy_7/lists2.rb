def multiply_list(array1, array2)
  # combined_array = []
  # array1.each_index do |index|
  #   combined_array << array1[index] * array2[index]
  # end
  # combined_array

  combined = array1.zip(array2) do |sub_array|
    sub_array.inject(:*)
  end
  combined
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]