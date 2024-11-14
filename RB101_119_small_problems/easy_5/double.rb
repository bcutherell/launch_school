def crunch(string)
arr = string.chars
str = []
count = 0
  loop do
    break if count == string.length
    current_character = arr[count]
    if current_character != str.last
      str << current_character
    end
    count += 1
  end
str.join
end

def crunch(string)
  arr = string.chars
  new_arr = []
  arr.each { |letter| new_arr << letter if letter != new_arr.last }
  new_arr.join
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''