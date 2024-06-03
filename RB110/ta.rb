# def determine_missing_letter(array)
#   all_letters = ('A'.. 'Z').to_a + ('a'..'z').to_a
#   arr = []
#   all_letters.select do |letter|
#     array
#   end
# end



# =begin

# input: array containing single character strings
# output: string
# rules: 
# explicit: 
# input is an array of consecutive letters, minus one random letter
# output the missing letter with reverse case as a string,
#   ex: 'acd' 'B', 'ACD' 'b'

# implicit: 
# if array is empty, returns an empty array

# algorithm:
# compare array to the same consecutive letters
# determine when the strings stop matching and output that string
# if uppercase, change to lowercase
# if lowercase, change to uppercase
# if array is empty, return empty array

# letter_array = ('A'.. 'Z') + ('a'..'z')



# =end

=begin

Given a word, return a copy of that word, removing every vowel after the first three:

three_vowels("tropical") == "tropical"
three_vowels("tropicalia") == "tropical"
three_vowels("BliMp123") == "BliMp123"
three_vowels("eyelash2!!!") == "eyelsh2!!!"

input: string
output: string
rules: 
explicit: remove every vowel after the first 3 vowels

implicit: y counts as a vowel

algorithm:
break string down into single character array
iterate through characters in array and count each vowel
once vowel == 3 start deleting vowels

=end

def three_vowels(string)
  vowel_count = 0
  vowels = %w(a e i o u y)
  arr = string.chars.map do |letter|
    if vowels.include?(letter)
      if vowel_count >= 3
        letter = ''
      else
        vowel_count += 1
      end
    end
    letter
  end
  arr
end


# def three_vowels(string)
#   counter = 0
#   vowels = %w(a e i o u y)
#   arr_chars = string.chars.map do |char|
#     if vowels.include?(char)
#       if counter >= 3
#         char = ''
#       else
#         counter += 1
#       end
#     end
#     char
#   end
#   arr_chars
# end

p three_vowels("tropical")
p three_vowels("tropicalia")