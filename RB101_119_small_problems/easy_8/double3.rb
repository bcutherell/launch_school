def repeater(string)
  string.chars.map { |letter| letter * 2 }.join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''