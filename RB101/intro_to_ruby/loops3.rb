def countdown(number)
  puts number
  if number > 0
    countdown(number - 1)
  end
end

countdown(5)
countdown(-5)
countdown(0)
