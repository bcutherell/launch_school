def stringy(string_length, optional=1)
  numbers = []

if optional == 1
  string_length.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

elsif optional == 0
  string_length.times do |index|
    number = index.even? ? 0 : 1
    numbers << number
  end
end

  numbers.join
end

p stringy(6, 0)
p stringy(9, 0)
p stringy(4, 0)
p stringy(7, 0)

p stringy(6)
p stringy(9)
p stringy(4)
p stringy(7)