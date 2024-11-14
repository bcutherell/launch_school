def stringy(integer, second=1)
  numbers = []

  if second == 0
    integer.times do |array|
    number = array.odd? ? 1 : 0
    numbers << number
  else
    integer.times do |array|
    number = array.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)


