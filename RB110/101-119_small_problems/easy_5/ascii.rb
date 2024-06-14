def ascii_value(string)
  ascii_total = 0
  arr = string.chars.each { |letter| ascii_total += letter.ord }
  ascii_total
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')
