def century(year)
  cent = ((year - 1) / 100) + 1

  # return "#{cent}th" if [11, 12, 13].include?(cent % 100)
  # last_digit = cent % 10

  # case last_digit
  # when 1 then "#{cent}st"
  # when 2 then "#{cent}nd"
  # when 3 then "#{cent}rd"
  # else "#{cent}th"
  # end

  if cent.to_s.end_with?('11') || cent.to_s.end_with?('12') || cent.to_s.end_with?('13')
    "#{cent}th"
  elsif cent.digits.first == 1
    "#{cent}st"
  elsif cent.digits.first == 2
    "#{cent}nd"
  elsif cent.digits.first == 3
    "#{cent}rd"
  else
    "#{cent}th"
  end

end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


  # if cent.to_s.end_with?('11') || cent.to_s.end_with?('12') || cent.to_s.end_with?('13')
  #   "#{cent}th"
  # elsif cent.digits.first == 1
  #   "#{cent}st"
  # elsif cent.digits.first == 2
  #   "#{cent}nd"
  # elsif cent.digits.first == 3
  #   "#{cent}rd"
  # else
  #   "#{cent}th"
  # end