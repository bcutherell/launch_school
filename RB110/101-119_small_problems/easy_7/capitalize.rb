# def word_cap(string)
#   string.split.map { |word| word.capitalize }.join(' ')
# end

def word_cap(string)
  arr = string.split
  arr.map do |word|
    word.downcase!
    word[0] = word[0].upcase
    word
  end
  arr.join(' ')
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'