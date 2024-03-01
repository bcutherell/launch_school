def print_in_box(string)
  top_bottom = "+#{"-" * (string.length + 2)}+"
  sides = "| #{" " * string.length} |"

  puts top_bottom
  puts sides
  puts "| #{string} |"
  puts sides
  puts top_bottom
end

print_in_box('To boldly go where no one has gone before.')