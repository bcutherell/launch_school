def string_to_integer(str)
digits = str.chars.map do |num|
  case num
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when 'A' then 10
  end
end

value = 0
digits.each do |num| 
  value = 10 * value + num
end
value
end

p string_to_integer('4321')
p string_to_integer('570')
