def stringy(length)
  numbers = []

  length.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(69)
