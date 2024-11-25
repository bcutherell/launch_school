HEXADECIMAL = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def uuid
  one = ''
  two = ''
  three = ''
  four = ''
  five = ''
  8.times { one << HEXADECIMAL.sample }
  4.times { two << HEXADECIMAL.sample }
  4.times { three << HEXADECIMAL.sample }
  4.times { four << HEXADECIMAL.sample }
  12.times { five << HEXADECIMAL.sample }
  "#{one}-#{two}-#{three}-#{four}-#{five}"
end

p uuid