# def letter_swap(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(string)
#   string.split.map { |word| letter_swap(word) }.join(' ')
# end

def swap(str)
  str.split.map do |word|
    first, *mid, last = word.chars
    "#{last}#{mid.join}#{first}"
  end.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'