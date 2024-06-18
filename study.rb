if var
  puts "written assessment"
else
  puts "interview"
end


def fix(value)
  value[1] = 'x'
  value
end

s = 'abc'
t = fix(s)

def stringy(string_length, optional=1)
  numbers = []

if optional == 1
  string_length.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

elsif optional == 0
  string_length.times do |index|
    number = index.even? ? 0 : 1
    numbers << number
  end

else
  puts "Please put either 1 or 0"
end

  numbers.join
end

puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4, 0)
puts stringy(7, 0)

# rb101 small problems, easy 3, exclusive or
def xor?(argument_1, argument_2)
  if argument_1 == true && argument_2 == false
    true
  elsif argument_1 == false && argument_2 == true
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
