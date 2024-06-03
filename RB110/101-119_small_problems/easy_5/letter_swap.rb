def swap(string)
  arr = []
  string_arr = string.split
  string_arr.each do |word|
    arr << word.pop
    arr << word[1..-1]
    arr << word[0]
  end
  arr.join(' ').to_s
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')

