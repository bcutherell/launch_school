def include?(arr, num)
  arr.any? { |element| element == num }
end

def include?(arr, num)
  arr.each do |element|
    return true if element == num
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false