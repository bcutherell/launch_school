sample = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.select do |element2|
    element2.partition do |element3|
      element3.size > 2
    end
  end
end

puts sample
