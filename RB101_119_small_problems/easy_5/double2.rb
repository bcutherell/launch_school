def crunch(string)
  # holder = []
  # string.chars.each do |character|
  #   if holder.last == character
  #     character.delete(character)
  #   else
  #     holder << character
  #   end
  # end
  #   holder.join

  holder = []
  string.chars.each do |letter|
    holder << letter unless holder.last == letter
  end
  holder.join
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''