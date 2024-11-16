def center_of(string)
  halfway = string.length / 2
  even_halfway = (string.length - 1) / 2

  if string.length.even?
    string[even_halfway..halfway]
  else
    string[halfway]
  end

end


p center_of('I love Ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool')# == 'hs'
p center_of('x') #== 'x'

p center_of('I love Ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'