names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  names.pop
  break if names.size == 0
end

p names