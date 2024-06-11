def ascii_value(string)
  ascii_total = 0
  arr = string.chars
  arr.each { |letter| ascii_total += letter.ord }
  ascii_total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0