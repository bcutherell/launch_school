def triangle(number)
  stars = 1

  number.times do
    puts (" " * (number - 1)) + ("*" * stars)
    number -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)