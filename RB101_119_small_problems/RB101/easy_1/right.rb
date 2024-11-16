def triangle(integer, corner)
  spaces = integer - 1
  stars = 1

  if corner == 'bottom left'
    1.upto(integer) do
      p ('*' * stars) + (' ' * spaces)
      spaces -= 1
      stars += 1
    end

  elsif corner == 'bottom right'
    1.upto(integer) do
      p (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end

  elsif corner == 'top left'
    1.upto(integer) do
      p ('*' * (spaces + 1)) + (' ' * (stars - 1))
      spaces -= 1
      stars += 1
    end

  elsif corner == 'top right'
    1.upto(integer) do
      p (' ' * (stars - 1)) + ('*' * (spaces + 1))
      spaces -= 1
      stars += 1
    end

  end
  # if corner == 'top right'
  #   count = integer
  #   loop do
  #     p (' ' * (integer - count)) + ('*' * count)
  #     count -= 1
  #     break if count <= 0
  #   end
  # elsif corner == 'top left'
  #   count = 0
  #   loop do
  #     p ('*' * (integer - count)) + (' ' * count)
  #     count += 1
  #     break if count >= integer
  #   end
  # elsif corner == 'bottom left'
  #   count = integer
  #   loop do
  #     p ('*' * (integer - count)) + (' ' * count)
  #     count -= 1
  #     break if count < 0
  #   end

  # end



end

triangle(5, 'bottom left')
triangle(5, 'bottom right')
triangle(5, 'top left')
triangle(5, 'top right')