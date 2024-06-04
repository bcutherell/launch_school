require 'pry-byebug'

def swap(string)
  arr = []
  string_arr = string.split
  string_arr.each do |word|
    if word.length == 1
       arr << word
    elsif word.length == 2
       arr << word.reverse
    else
      word[0], word[-1] = word[-1], word[0]
      arr << word
    end
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')
