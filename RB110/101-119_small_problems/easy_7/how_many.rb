def count_occurrences(arr)
  hsh = {}

  arr.uniq.each do |word|
    hsh[word] = arr.count(word)
  end

  hsh.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)