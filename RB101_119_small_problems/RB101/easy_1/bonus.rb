def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end



# def calculate_bonus(salary, bonus)
#   if bonus == true
#     puts salary / 2
#   else
#     puts '0'
#   end
# end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)