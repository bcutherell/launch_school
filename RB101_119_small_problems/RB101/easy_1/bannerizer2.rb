def print_in_box(string)
  top_bottom_lines = "+#{'-' * (string.length + 2)}+"
  side_lines = "|#{' ' * (string.length + 2)}|"

  puts top_bottom_lines
  puts side_lines
  puts "| #{string} |"
  puts side_lines
  puts top_bottom_lines
end

print_in_box('test, this is a test.')
print_in_box('')