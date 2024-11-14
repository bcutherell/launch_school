def century(year)
  if year >= 1 && year <= 100
    '1st'
  elsif year >= 101 && year <= 200
    '2nd'
  elsif year >= 201 && year <= 300
    '3rd'
  end 
end


p century(5)
p century(150)
p century(250)


# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'