def triangle(positive_integer)
  spaces = positive_integer - 1
  stars = 1

  positive_integer.times do
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)