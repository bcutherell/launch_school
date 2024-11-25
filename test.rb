# def anagram?(word1, word2)
#   word1.chars.sort == word2.chars.sort
# end

# def groupAnagrams(array)
#   anagrams = []
#   array.each do |word|
#     if anagrams.empty?
#       anagrams << word
#     elsif anagram?(anagrams[0], word)
#       anagrams << word
#     else
#     end
#   end
#   anagrams
# end


# # result = {}

# # words.each do |word|
# #   key = word.split('').sort.join
# #   if result.has_key?(key)
# #     result[key].push(word)
# #   else
# #     result[key] = [word]
# #   end
# # end


# def groupAnagrams(words)
#   anagram_groups = {}

#   words.each do |word|
#     sorted_word = word.chars.sort.join
#     anagram_groups[sorted_word] ||= []
#     anagram_groups[sorted_word] << word
#   end
#   anagram_groups.values
# end

def groupAnagrams(words)
  anagram_groups = {}

  words.each do |word|
    sorted_word = word.chars.sort.join
    if anagram_groups.has_key?(sorted_word)
      anagram_groups[sorted_word] << word
    else
      anagram_groups[sorted_word] = [word]
    end
  end

  anagram_groups
end

p groupAnagrams(['listen', 'silent', 'enlist', 'hello', 'olhel'])
# Output: [['listen', 'silent', 'enlist'], ['hello', 'olhel']]

p groupAnagrams(['abc', 'bca', 'cab', 'def', 'fed'])
# Output: [['abc', 'bca', 'cab'], ['def', 'fed']]

p groupAnagrams(['cat', 'dig', 'tac', 'god', 'act'])
# Output: [['cat', 'tac', 'act'], ['dig', 'god']]







# def even_or_odd(number)
#   if (number % 2) == 0
#     puts "Even"
#   else
#     puts "Odd"
#   end
# end

# even_or_odd(1)
# even_or_odd(2)
# even_or_odd(50)
# even_or_odd(51)



# array = [1, 2, 3, 4, 5]

# p array.select do |num|
#     puts num if num.odd?
#   end


# def a_method(a)
#   a << 'world'
# end

# a = 'hello'
# a_method(a[0])
# p a


# def change_name(name) 
#   name = 'bob' # does this reassignment change the object outside the method?
# end

# name = 'jim'
# change_name(name)
# puts name


# These two gave me trouble, look into them

# def test(str)
#   str = str.upcase!
#   str.downcase!
# end

# test_str = 'Written Assessment'
# test(test_str)
# puts test_str


# def test(str)
#   str += '!'
#   str.downcase!
# end

# test_str = 'Written Assessment'
# test(test_str)
# puts test_str

# variable = 'string'
# puts variable.object_id

# variable += 'extra'
# puts variable.object_id



# a = 4
# b = 2

# loop do
#   c = 3
#   a = c
#   break
# end

# puts a
# puts b

















# arr = [1]

# for i in arr do
#   a = 'World'
# end

# puts a





















# # What code could we add to see each student printed with their respective grade?

# # students = ['Martin', 'Milo', 'Michelle']
# # grades = [94, 87, 98]

# # index = 0
# # while index < students.length
# #   puts '------------'
# #   puts students[index]
# #   puts grades[index]
# #   index += 1
# # end


# #####

# # # Can you write the code necessary to get the desired output shown on the last line?
# # make = 'Ford'
# # model = 'Ranger'

# # puts # Your Code Here
# # # Look! It's a Ford Ranger!