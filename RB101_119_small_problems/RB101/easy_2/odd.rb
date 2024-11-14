odd = 1..99
just_odd = odd.select {|number| number.odd? }
puts just_odd

# for number in 1..99
#   if number.odd?
#     puts number
#   end
# end