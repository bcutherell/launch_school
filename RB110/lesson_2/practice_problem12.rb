arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash_array = {}

arr.each do |element|
  hash_array[element[0]] = element[1]
end

p hash_array