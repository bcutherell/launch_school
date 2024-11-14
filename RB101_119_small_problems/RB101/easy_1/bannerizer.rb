def print_in_box(sentence)
   top_and_bottom = "+#{'-' * (sentence.size + 2)}+"
   sides = "|#{' ' * (sentence.size + 2)}|"

   puts top_and_bottom
   puts sides
   puts "| #{sentence} |"
   puts sides
   puts top_and_bottom
end

print_in_box('this is hard')