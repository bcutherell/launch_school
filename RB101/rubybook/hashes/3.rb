person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person.each do |k, v|
  puts k
end

person.each do |k, v|
  puts v
end

person.each do |hash|
  puts hash
end