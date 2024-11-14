def multiply_all_pairs(array1, array2)
  combined = array1.product(array2)
  product = combined.map { |sub| sub[0] * sub[1] }
  product.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([1, 2, 3], [1, 2, 3])