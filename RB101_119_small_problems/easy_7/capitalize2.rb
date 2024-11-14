def word_cap(string)
  # array = string.split.map do |word|
  #   word.capitalize
  # end
  # array.join(' ')

  # array = string.split.each do |word|
  #   word.downcase!
  #   word[0] = word[0].upcase
  # end
  # array.join(' ')

end

puts word_cap('four score and seven') #== 'Four Score And Seven'
puts word_cap('the javaScript language') #== 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'