def capitalize(string)
  if string.length > 10
    puts string.upcase
  else
    puts string
  end
end

capitalize('string')
capitalize('hello world')
capitalize('123456789')
capitalize('make this capitalized')