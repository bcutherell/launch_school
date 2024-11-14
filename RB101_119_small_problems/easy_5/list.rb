def digit_list(integer)
  integer.to_s.chars.map { |num| num.to_i }
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]