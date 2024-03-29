def print_in_box(string)
  top_and_bottom = "+-#{'-' * string.length}-+"
  sides = "| #{' ' * string.length} |"
  center = "| #{string} |"

  puts top_and_bottom
  puts sides
  puts center
  puts sides
  puts top_and_bottom
  
end

print_in_box('To boldly go where no one has gone before.')