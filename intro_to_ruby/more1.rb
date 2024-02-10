def check(string)
  if string =~ /lab/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

check('laboratory')
check('expirement')
check('Pans Labyrinth')
check('elaborate')
check('polar bear')