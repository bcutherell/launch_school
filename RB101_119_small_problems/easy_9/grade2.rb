def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3

  case average
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end


  # case average
  # when 90..100 then 'A'
  # when 80..89  then 'B'
  # when 70..79  then 'C'
  # when 60..69  then 'D'
  # else              'F'
  # end

end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

p get_grade(100, 100, 100)