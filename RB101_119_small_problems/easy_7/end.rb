# def penultimate(string)
#   string.split[-2]
# end

def penultimate(string)
  arr = string.split
  if arr.length.even?
    ' '
  else
    arr[arr.length / 2]
  end
end

p penultimate('last word')
p penultimate('Launch School is great!')

p penultimate('last word') == ' '
p penultimate('Launch School is great!') == ' '

p penultimate('one two three four five')
p penultimate('one two three four five') == 'three'
